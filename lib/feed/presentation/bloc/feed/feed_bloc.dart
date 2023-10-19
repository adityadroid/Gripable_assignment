import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gripable_assignment/core/types/sort_type.dart';
import 'package:gripable_assignment/feed/data/data.dart';
import 'package:gripable_assignment/feed/domain/domain.dart';

part 'feed_event.dart';

part 'feed_state.dart';

part 'feed_bloc.freezed.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  FeedBloc({
    required FeedRepository feedRepository,
    required String subRedditName,
  })  : _feedRepository = feedRepository,
        _subRedditName = subRedditName,
        super(const FeedState.loading()) {
    on<FeedEvent>((event, emitter) async {
      await event.map(
        loadFirstPage: (event) async => _loadFirstPage(
          event,
          emitter,
        ),
        loadNextPage: (event) async => _loadNextPage(
          event,
          emitter,
        ),
      );
    });
  }

  final FeedRepository _feedRepository;
  final String _subRedditName;

  Future<void> _loadFirstPage(
    LoadFirstPage event,
    Emitter<FeedState> emit,
  ) async {
    try {
      final feedData = await _feedRepository.fetchPosts(
        _subRedditName,
        event.sortType,
      );
      if (feedData == null) {
        emit(const FeedState.error());
      } else {
        emit(FeedState.loaded(feedData));
      }
    } on (Exception e,) {
      emit(const FeedState.error());
    }
  }

  Future<void> _loadNextPage(
    LoadNextPage event,
    Emitter<FeedState> emit,
  ) async {
    try {
      final after = (state as LoadedState).feedData.after;
      final feedData = await _feedRepository.fetchPosts(
        _subRedditName,
        event.sortType,
        after: after,
      );
      if (feedData == null) {
        emit(const ErrorState());
      } else {
        emit(LoadedState(feedData));
      }
    } on (Exception e,) {
      emit(const ErrorState());
    }
  }
}
