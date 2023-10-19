import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gripable_assignment/core/types/sort_type.dart';
import 'package:gripable_assignment/feed/data/data.dart';
import 'package:gripable_assignment/feed/domain/domain.dart';

part 'feed_event.dart';

part 'feed_state.dart';

part 'feed_bloc.freezed.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  FeedBloc({
    required SortType sortType,
    required FeedRepository feedRepository,
    required String subRedditName,
  })  : _feedRepository = feedRepository,
        _subRedditName = subRedditName,
        _sortType = sortType,
        super(const FeedState.loading()) {
    on<FeedEvent>(
      (event, emitter) async {
        await event.map(
          loadFirstPage: (event) async => _handleLoadFirstPageEvent(
            event,
            emitter,
          ),
          loadNextPage: (event) async => _handleLoadNextPageEvent(
            event,
            emitter,
          ),
        );
      },
      transformer: droppable(),
    );
  }

  final FeedRepository _feedRepository;
  final String _subRedditName;
  final SortType _sortType;

  Future<void> _handleLoadFirstPageEvent(
    LoadFirstPageEvent event,
    Emitter<FeedState> emit,
  ) async {
    try {
      final postsData = await _feedRepository.fetchPosts(
        _subRedditName,
        _sortType,
      );
      if (postsData == null) {
        emit(const ErrorState());
      } else {
        emit(
          LoadedState(
            feedData: postsData,
            hasReachedMax: _hasReachedMax(postsData),
          ),
        );
      }
    } on Exception {
      emit(const ErrorState());
    }
  }

  Future<void> _handleLoadNextPageEvent(
    LoadNextPageEvent event,
    Emitter<FeedState> emit,
  ) async {
    try {
      final after = (state as LoadedState).feedData.after;
      if (after == null) {
        // this means there are no more posts to show
        return;
      }
      final newPostsData = await _feedRepository.fetchPosts(
        _subRedditName,
        _sortType,
        after: after,
      );
      if (newPostsData == null) {
        emit(const ErrorState());
      } else {
        final previousPostsData = (state as LoadedState).feedData.children;
        final updatedData = FeedData(
          children: previousPostsData + newPostsData.children,
          after: newPostsData.after,
        );
        emit(
          LoadedState(
            feedData: updatedData,
            hasReachedMax: _hasReachedMax(updatedData),
          ),
        );
      }
    } on Exception {
      emit(const ErrorState());
    }
  }

  bool _hasReachedMax(FeedData feedData) => feedData.after == null;
}
