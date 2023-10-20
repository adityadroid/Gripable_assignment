import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gripable_assignment/core/l10n/l10n.dart';
import 'package:gripable_assignment/core/providers/subreddit_info_provider.dart';
import 'package:gripable_assignment/core/types/sort_type.dart';
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
        length: SortType.values.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              context.l10n.feedHomeTitle(
                context.watch<SubRedditInfoProvider>().name,
              ),
            ),
            bottom: TabBar(
              tabs: SortType.values
                  .map((sortType) => Tab(text: sortType.label(context)))
                  .toList(),
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
