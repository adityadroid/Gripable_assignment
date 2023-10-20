import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gripable_assignment/core/providers/subreddit_info_provider.dart';
import 'package:gripable_assignment/feed/domain/repository/feed_repository.dart';
import 'package:provider/provider.dart';

class InjectionContainer extends StatelessWidget {
  const InjectionContainer({
    required this.feedRepository,
    required this.subRedditInfoProvider,
    required this.child,
    super.key,
  });

  final FeedRepository feedRepository;
  final SubRedditInfoProvider subRedditInfoProvider;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    //inject here
    return ChangeNotifierProvider.value(
      value: subRedditInfoProvider,
      child: MultiRepositoryProvider(
        providers: [RepositoryProvider.value(value: feedRepository)],
        child: child,
      ),
    );
  }
}
