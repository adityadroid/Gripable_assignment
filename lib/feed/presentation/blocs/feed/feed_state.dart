part of 'feed_bloc.dart';

@freezed
class FeedState with _$FeedState {
  const factory FeedState.loading() = LoadingState;

  const factory FeedState.loaded({
    required FeedData feedData,
    required bool hasReachedMax,
  }) = LoadedState;

  const factory FeedState.error() = ErrorState;
}
