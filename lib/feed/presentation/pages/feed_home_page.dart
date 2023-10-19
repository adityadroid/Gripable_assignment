import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gripable_assignment/core/l10n/l10n.dart';
import 'package:gripable_assignment/core/types/sort_type.dart';
import 'package:gripable_assignment/core/types/subreddit_info.dart';
import 'package:gripable_assignment/feed/presentation/widgets/feed_widget.dart';

class FeedHomePage extends StatelessWidget {
  const FeedHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) => const FeedHomeView();
}

class FeedHomeView extends StatelessWidget {
  const FeedHomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              context.l10n.feedHomeTitle(
                context.watch<SubRedditInfoProvider>().name,
              ),
            ),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: context.l10n.feedHomeHot),
                Tab(text: context.l10n.feedHomeNew),
                Tab(text: context.l10n.feedHomeRising),
              ],
            ),
          ),
          body: TabBarView(
            children: SortType.values
                .map((sortType) => FeedWidget(sortType: sortType))
                .toList(),
          ),
        ),
      );
}
