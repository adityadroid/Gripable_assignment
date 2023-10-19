part of 'feed_bloc.dart';

@freezed
class FeedEvent with _$FeedEvent {
  const factory FeedEvent.loadFirstPage(SortType sortType) = LoadFirstPage;
  const factory FeedEvent.loadNextPage(SortType sortType) = LoadNextPage;
}
