import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

import 'package:gripable_assignment/bootstrap/app_bloc_observer.dart';
import 'package:gripable_assignment/bootstrap/flavor_config.dart';
import 'package:gripable_assignment/bootstrap/injection_container.dart';
import 'package:gripable_assignment/core/providers/subreddit_info_provider.dart';
import 'package:gripable_assignment/feed/data/datasource/remote_feed_data_source.dart';
import 'package:gripable_assignment/feed/domain/repository/feed_repository.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  ///Setup error logging and bloc observer
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };
  Bloc.observer = const AppBlocObserver();

  /// Initalise API and repository layers
  final options = BaseOptions(baseUrl: FlavorConfig.getInstance().apiBaseUrl);
  final dio = Dio(options);
  final feedDataSource = RemoteFeedDataSource(dio: dio);
  final feedRepository = FeedRepository(dataSource: feedDataSource);
  final subredditInfoProvider = SubRedditInfoProvider(name: 'FlutterDev');

  runApp(
    RootRestorationScope(
      restorationId: 'root',
      child: InjectionContainer(
        feedRepository: feedRepository,
        subRedditInfoProvider: subredditInfoProvider,
        child: await builder(),
      ),
    ),
  );
}
