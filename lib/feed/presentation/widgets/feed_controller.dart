import 'package:flutter/material.dart';

class FeedController {
  FeedController({this.onReachedBottom}) {
    _scrollController.addListener(_onScroll);
  }

  final ScrollController _scrollController = ScrollController();
  final _scrollThreshold = 200.0;

  void Function()? onReachedBottom;

  ScrollController get scrollController => _scrollController;

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (maxScroll - currentScroll <= _scrollThreshold) {
      onReachedBottom?.call();
    }
  }

  void dispose() => _scrollController
    ..removeListener(_onScroll)
    ..dispose();

  void removeListener() => _scrollController..removeListener(_onScroll);
}
