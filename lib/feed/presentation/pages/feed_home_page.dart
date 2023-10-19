import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gripable_assignment/core/l10n/l10n.dart';
import 'package:gripable_assignment/feed/domain/domain.dart';
import 'package:gripable_assignment/feed/presentation/bloc/feed/feed_bloc.dart';

class FeedHomePage extends StatelessWidget {
  const FeedHomePage({
    required this.subRedditName,
    super.key,
  });

  final String subRedditName;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => FeedBloc(
          feedRepository: context.read<FeedRepository>(),
          subRedditName: subRedditName,
        ),
        child: FeedHomeView(
          subRedditName: subRedditName,
        ),
      );
}

class FeedHomeView extends StatelessWidget {
  const FeedHomeView({
    required this.subRedditName,
    super.key,
  });

  final String subRedditName;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.l10n.feedHomeTitle(subRedditName)),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: context.l10n.feedHomeHot),
              Tab(text: context.l10n.feedHomeNew),
              Tab(text: context.l10n.feedHomeRising),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
