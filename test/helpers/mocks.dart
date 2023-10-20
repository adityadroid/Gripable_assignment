import 'package:gripable_assignment/core/providers/subreddit_info_provider.dart';
import 'package:gripable_assignment/feed/domain/domain.dart';
import 'package:mocktail/mocktail.dart';

class MockSubRedditInfoProvider extends Mock implements SubRedditInfoProvider {
  @override
  String get name => 'flutterdev';
}

class MockFeedRepository extends Mock implements FeedRepository {}
