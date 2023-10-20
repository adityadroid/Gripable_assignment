import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gripable_assignment/core/types/sort_type.dart';
import 'package:gripable_assignment/feed/data/data.dart';
import 'package:gripable_assignment/feed/presentation/blocs/feed/feed_bloc.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/mocks.dart';

void main() {
  group('FeedBloc', () {
    late MockFeedRepository mockFeedRepository;
    const sortType = SortType.newSort;
    const subRedditName = 'flutterdev';
    setUpAll(() {
      mockFeedRepository = MockFeedRepository();
    });
    test('Initial state should be LoadingState', () {
      final feedBloc = FeedBloc(
        sortType: sortType, // Provide the desired values here
        feedRepository: mockFeedRepository,
        subRedditName: subRedditName,
      );
      expect(feedBloc.state, const LoadingState());
    });
    blocTest<FeedBloc, FeedState>(
      'emits LoadedState when LoadFirstPageEvent is added',
      setUp: () {
        when(() => mockFeedRepository.fetchPosts(subRedditName, sortType))
            .thenAnswer((_) {
          return Future.value(const FeedData(children: []));
        });
      },
      build: () => FeedBloc(
        sortType: sortType, // Provide the desired values here
        feedRepository: mockFeedRepository,
        subRedditName: subRedditName,
      ),
      act: (bloc) => bloc.add(const LoadFirstPageEvent()),
      expect: () {
        return [isA<LoadedState>()];
      },
    );

    blocTest<FeedBloc, FeedState>(
      'emits ErrorState when LoadFirstPageEvent fails',
      setUp: () {
        when(() => mockFeedRepository.fetchPosts(subRedditName, sortType))
            .thenThrow(Exception());
      },
      build: () => FeedBloc(
        sortType: sortType, // Provide the desired values here
        feedRepository: mockFeedRepository,
        subRedditName: subRedditName,
      ),
      act: (bloc) => bloc.add(const LoadFirstPageEvent()),
      expect: () {
        return [const ErrorState()];
      },
    );
    blocTest<FeedBloc, FeedState>(
      'emits LoadedState when LoadNextPageEvent is added',
      setUp: () {
        when(
          () => mockFeedRepository.fetchPosts(
            subRedditName,
            sortType,
            after: 'abc123',
          ),
        ).thenAnswer((_) {
          return Future.value(const FeedData(children: []));
        });
      },
      build: () => FeedBloc(
        sortType: sortType, // Provide the desired values here
        feedRepository: mockFeedRepository,
        subRedditName: subRedditName,
      ),
      act: (bloc) => bloc.add(const LoadNextPageEvent()),
      seed: () {
        // Seed the bloc state with LoadedState
        return const LoadedState(
          feedData: FeedData(children: [], after: 'abc123'),
          hasReachedMax: false,
        );
      },
      expect: () {
        return [isA<LoadedState>()];
      },
    );

    blocTest<FeedBloc, FeedState>(
      'emits ErrorState when LoadNextPageEvent fails',
      setUp: () {
        when(
          () => mockFeedRepository.fetchPosts(
            subRedditName,
            sortType,
            after: 'abc123',
          ),
        ).thenThrow(Exception());
      },
      build: () => FeedBloc(
        sortType: sortType, // Provide the desired values here
        feedRepository: mockFeedRepository,
        subRedditName: subRedditName,
      ),
      act: (bloc) => bloc.add(const LoadNextPageEvent()),
      seed: () {
        // Seed the bloc state with LoadedState
        return const LoadedState(
          feedData: FeedData(children: [], after: 'abc123'),
          hasReachedMax: false,
        );
      },
      expect: () {
        return [const ErrorState()];
      },
    );

    blocTest<FeedBloc, FeedState>(
      'emits LoadedState with x number of posts on LoadFirstPageEvent',
      setUp: () {
        when(() => mockFeedRepository.fetchPosts(subRedditName, sortType))
            .thenAnswer((_) async {
          // Simulate a successful API call
          final postsData = FeedData(
            children: List.generate(5, (index) {
              return Post(
                kind: 'post',
                data: PostData(
                  title: 'Title $index',
                  selfText: 'Text $index',
                  url: 'URL $index',
                ),
              );
            }),
            after: 'nextPageToken',
          );
          return postsData;
        });
      },
      build: () => FeedBloc(
        sortType: sortType, // Provide the desired values here
        feedRepository: mockFeedRepository,
        subRedditName: subRedditName,
      ),
      act: (bloc) => bloc.add(const LoadFirstPageEvent()),
      expect: () {
        return [
          isA<LoadedState>(),
        ];
      },
      verify: (bloc) {
        final loadedState = bloc.state as LoadedState;
        expect(
          loadedState.feedData.children.length,
          5,
        ); // Check the number of posts
      },
    );

    blocTest<FeedBloc, FeedState>(
      'emits LoadedState with x+y number of posts on LoadNextPageEvent',
      setUp: () {
        when(() => mockFeedRepository.fetchPosts(subRedditName, sortType))
            .thenAnswer((_) async {
          // Simulate a successful API call
          final postsData = FeedData(
            children: List.generate(5, (index) {
              return Post(
                kind: 'post',
                data: PostData(
                  title: 'Title $index',
                  selfText: 'Text $index',
                  url: 'URL $index',
                ),
              );
            }),
            after: 'nextPageToken',
          );
          return postsData;
        });
        when(
          () => mockFeedRepository.fetchPosts(
            subRedditName,
            sortType,
            after: 'nextPageToken',
          ),
        ).thenAnswer((_) async {
          final nextPageData = FeedData(
            children: List.generate(3, (index) {
              return Post(
                kind: 'post',
                data: PostData(
                  title: 'Title ${index + 5}', // Offset by previous page
                  selfText: 'Text ${index + 5}',
                  url: 'URL ${index + 5}',
                ),
              );
            }),
            after: 'nextPageToken2',
          );
          return nextPageData;
        });
      },
      build: () => FeedBloc(
        sortType: sortType, // Provide the desired values here
        feedRepository: mockFeedRepository,
        subRedditName: subRedditName,
      ),
      act: (bloc) async {
        bloc
          ..add(const LoadFirstPageEvent())
          ..add(const LoadNextPageEvent());
      },
      expect: () {
        return [
          isA<LoadedState>(),
          isA<LoadedState>(),
        ];
      },
      verify: (bloc) {
        final loadedState = bloc.state as LoadedState;
        expect(
          loadedState.feedData.children.length,
          8,
        ); // Check the total number of posts (x + y)
      },
    );
  });
}
