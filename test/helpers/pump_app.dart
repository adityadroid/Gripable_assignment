import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gripable_assignment/bootstrap/bootstrap.dart';
import 'package:gripable_assignment/core/l10n/l10n.dart';
import 'package:gripable_assignment/core/providers/subreddit_info_provider.dart';
import 'package:gripable_assignment/feed/domain/domain.dart';

import 'mocks.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(
    Widget widget, {
    FeedRepository? feedRepository,
    SubRedditInfoProvider? subRedditInfoProvider,
  }) {
    final mockSubRedditInfoProvider =
        subRedditInfoProvider ?? MockSubRedditInfoProvider();
    final mockFeedRepository = feedRepository ?? MockFeedRepository();
    return pumpWidget(
      InjectionContainer(
        feedRepository: mockFeedRepository,
        subRedditInfoProvider: mockSubRedditInfoProvider,
        child: MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: widget,
        ),
      ),
    );
  }
}
