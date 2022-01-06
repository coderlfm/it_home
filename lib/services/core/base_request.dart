import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class BaseRequest with DioMixin implements Dio {
  BaseRequest({BaseOptions? options, required String baseURL, required int timeOut}) {
    options ??= BaseOptions(
      baseUrl: baseURL,
      contentType: 'application/json',
      connectTimeout: timeOut,
      sendTimeout: timeOut,
      receiveTimeout: timeOut,
    );

    this.options = options;

    // // DioCacheManager 缓存管理
    // final cacheOptions = CacheOptions(
    //   // A default store is required for interceptor.
    //   store: MemCacheStore(),
    //   // Optional. Returns a cached response on error but for statuses 401 & 403.
    //   hitCacheOnErrorExcept: [401, 403],
    //   // Optional. Overrides any HTTP directive to delete entry past this duration.
    //   maxStale: const Duration(days: 7),
    // );

    // interceptors.add(DioCacheInterceptor(options: cacheOptions));

    // // Cookie管理
    // if (dioConfig?.cookiesPath?.isNotEmpty ?? false) {
    //   interceptors.add(CookieManager(PersistCookieJar(storage: FileStorage(dioConfig!.cookiesPath))));
    // }

    if (kDebugMode) {
      interceptors
          .add(LogInterceptor(responseBody: true, error: true, requestHeader: false, responseHeader: false, request: false, requestBody: true));
    }
    // if (dioConfig?.interceptors?.isNotEmpty ?? false) {
    //   interceptors.addAll(interceptors);
    // }

    httpClientAdapter = DefaultHttpClientAdapter();

    // if (dioConfig?.proxy?.isNotEmpty ?? false) setProxy(dioConfig!.proxy!);
  }

  setProxy(String proxy) {
    (httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
      // config the http client

      client.findProxy = (uri) {
        // proxy all request to localhost:8888
        return "PROXY $proxy";
      };

      // you can also create a HttpClient to dio
      // return HttpClient();
    };
  }
}
