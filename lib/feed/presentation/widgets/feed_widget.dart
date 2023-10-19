import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gripable_assignment/core/types/sort_type.dart';
import 'package:gripable_assignment/core/types/subreddit_info.dart';
import 'package:gripable_assignment/core/ui/app_bottom_loader.dart';
import 'package:gripable_assignment/core/ui/app_error_widget.dart';
import 'package:gripable_assignment/core/ui/app_progress_widget.dart';
import 'package:gripable_assignment/feed/data/data.dart';
import 'package:gripable_assignment/feed/domain/repository/feed_repository.dart';
import 'package:gripable_assignment/feed/presentation/blocs/feed/feed_bloc.dart';
import 'package:gripable_assignment/feed/presentation/widgets/feed_controller.dart';
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
        sortType: sortType,
      )..add(const LoadFirstPageEvent()),
      child: const FeedListView(),
    );
  }
}

class FeedListView extends StatefulWidget {
  const FeedListView({super.key});

  @override
  State<FeedListView> createState() => _FeedListViewState();
}

class _FeedListViewState extends State<FeedListView>
    with AutomaticKeepAliveClientMixin {
  late FeedController _feedController;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    _feedController = FeedController(onReachedBottom: _loadMoreData);
    super.initState();
  }

  void _loadMoreData() =>
      context.read<FeedBloc>().add(const LoadNextPageEvent());

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeedBloc, FeedState>(
      bloc: context.read<FeedBloc>(),
      listener: (context, state) {
        if (state is LoadedState && state.hasReachedMax) {
          _feedController.removeListener();
        }
      },
      builder: (context, state) => state.when(
        loading: () => const AppProgressWidget(),
        loaded: (FeedData feedData, bool hasReachedMax) => ListView.builder(
          controller: _feedController.scrollController,
          itemBuilder: (context, position) {
            return position >= feedData.children.length
                ? const AppBottomLoader()
                : PostCard(
                key: ObjectKey(feedData),
                postData: feedData.children[position].data);
          },
          itemCount: hasReachedMax
              ? feedData.children.length
              : feedData.children.length + 1,
        ),
        error: () => const AppErrorWidget(),
      ),
    );
  }

  @override
  void dispose() {
    _feedController.dispose();
    super.dispose();
  }
}
