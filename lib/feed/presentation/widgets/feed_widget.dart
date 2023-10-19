import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gripable_assignment/core/types/sort_type.dart';
import 'package:gripable_assignment/core/types/subreddit_info.dart';
import 'package:gripable_assignment/core/ui/app_error_widget.dart';
import 'package:gripable_assignment/core/ui/app_progress_widget.dart';
import 'package:gripable_assignment/feed/data/data.dart';
import 'package:gripable_assignment/feed/domain/repository/feed_repository.dart';
import 'package:gripable_assignment/feed/presentation/blocs/feed/feed_bloc.dart';
import 'package:gripable_assignment/feed/presentation/widgets/post_card.dart';

class FeedWidget extends StatelessWidget {
  const FeedWidget({required this.sortType, super.key});

  final SortType sortType;

  @override
  Widget build(BuildContext context) {
    final subRedditName = context.watch<SubRedditInfoProvider>().name;
    return BlocProvider(
      create: (context) => FeedBloc(
        feedRepository: context.read<FeedRepository>(),
        subRedditName: subRedditName,
      )..add(LoadFirstPage(sortType)),
      child: const FeedListView(),
    );
  }
}

class FeedListView extends StatelessWidget {
  const FeedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedBloc, FeedState>(
      bloc: context.read<FeedBloc>(),
      builder: (context, state) => state.when(
        loading: () => const AppProgressWidget(),
        loaded: (FeedData feedData) =>
            ListView.separated(
            separatorBuilder: (context,position){
              return SizedBox(height: 0,);
            }
            ,itemBuilder: (context, position) {
          return PostCard(postData: feedData.children[position].data);
        },itemCount: feedData.children.length,),
        error: () => const AppErrorWidget(),
      ),
    );
  }
}
