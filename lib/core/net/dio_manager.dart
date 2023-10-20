import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:path_provider/path_provider.dart';

Future<Dio> buildDioInstance({required String baseUrl}) async {
  //build base options
  final options = BaseOptions(baseUrl: baseUrl);
  //create cache interceptor
  final directory = await getTemporaryDirectory();
  final cacheStore = HiveCacheStore(directory.path);
  final cacheOptions = CacheOptions(
    store: cacheStore,
    hitCacheOnErrorExcept: [],
    policy: CachePolicy.forceCache,
    maxStale: const Duration(minutes: 5),
  );

  final dio = Dio(options)
    ..interceptors.add(
      DioCacheInterceptor(
        options: cacheOptions,
      ),
    );
  return dio;
}
