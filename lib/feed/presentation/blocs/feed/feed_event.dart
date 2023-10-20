part of 'feed_bloc.dart';

@freezed
class FeedEvent with _$FeedEvent {
  const factory FeedEvent.loadFirstPage() = LoadFirstPageEvent;
  const factory FeedEvent.loadNextPage() = LoadNextPageEvent;
}
