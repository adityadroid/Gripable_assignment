import 'package:flutter_test/flutter_test.dart';
import 'package:gripable_assignment/core/types/sort_type.dart';
import 'package:gripable_assignment/core/ui/ui.dart';
import 'package:gripable_assignment/feed/data/data.dart';
import 'package:gripable_assignment/feed/presentation/pages/feed_home_page.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/helpers.dart';
import '../../helpers/mocks.dart';

void main() {
  group('App', () {
    testWidgets('renders FeedHomePage', (tester) async {
      final mockFeedRepository = MockFeedRepository();
      when(
        () => mockFeedRepository.fetchPosts(
          'flutterdev',
          SortType.hotSort,
        ),
      ).thenAnswer(
        (_) => Future.value(
          const FeedData(
            children: [],
          ),
        ),
      );
      await tester.pumpApp(const App(), feedRepository: mockFeedRepository);
      expect(find.byType(FeedHomePage), findsOneWidget);
    });
  });
}
