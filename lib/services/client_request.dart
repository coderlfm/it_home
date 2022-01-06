import 'package:dio/dio.dart';
import 'package:it_home/services/core/request_transform.dart';

import 'core/base_request.dart';
import 'core/config.dart';
import 'core/request_handle.dart';
import 'core/request_response.dart';

class ClientRequest {
  static final BaseRequest _dio = BaseRequest(baseURL: Config.baseURL, timeOut: Config.timeOut);

  static Future<RequestResponse> get(
    String uri, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    RequestTransformer? requestTransformer,
  }) async {
    try {
      final response = await _dio.get(
        uri,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return handleResponse(response, requestTransformer: requestTransformer);
    } on Exception catch (e) {
      return handleException(e);
    }
  }

  static Future<RequestResponse> post(String uri,
      {data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress,
      RequestTransformer? requestTransformer}) async {
    try {
      final response = await _dio.post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return handleResponse(response, requestTransformer: requestTransformer);
    } on Exception catch (e) {
      return handleException(e);
    }
  }

  static Future<RequestResponse> patch(String uri,
      {data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress,
      RequestTransformer? requestTransformer}) async {
    try {
      final response = await _dio.patch(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return handleResponse(response, requestTransformer: requestTransformer);
    } on Exception catch (e) {
      return handleException(e);
    }
  }

  static Future<RequestResponse> delete(String uri,
      {data, Map<String, dynamic>? queryParameters, Options? options, CancelToken? cancelToken, RequestTransformer? requestTransformer}) async {
    try {
      final response = await _dio.delete(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return handleResponse(response, requestTransformer: requestTransformer);
    } on Exception catch (e) {
      return handleException(e);
    }
  }

  static Future<RequestResponse> put(String uri,
      {data, Map<String, dynamic>? queryParameters, Options? options, CancelToken? cancelToken, RequestTransformer? requestTransformer}) async {
    try {
      final response = await _dio.put(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return handleResponse(response, requestTransformer: requestTransformer);
    } on Exception catch (e) {
      return handleException(e);
    }
  }

  static Future<Response> download(String urlPath, savePath,
      {ProgressCallback? onReceiveProgress,
      Map<String, dynamic>? queryParameters,
      CancelToken? cancelToken,
      bool deleteOnError = true,
      String lengthHeader = Headers.contentLengthHeader,
      data,
      Options? options,
      RequestTransformer? requestTransformer}) async {
    try {
      final response = await _dio.download(
        urlPath,
        savePath,
        onReceiveProgress: onReceiveProgress,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        deleteOnError: deleteOnError,
        lengthHeader: lengthHeader,
        data: data,
        options: data,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
