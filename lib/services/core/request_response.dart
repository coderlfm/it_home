import 'request_error.dart';

// 服务端响应对象
class RequestResponse {
  bool ok = false;
  dynamic data;
  HttpException? error;

  // 成功
  RequestResponse.success(this.data) {
    ok = true;
  }

  // 客户端错误
  RequestResponse.failure({String? errorMsg, int? errorCode}) {
    error = BadRequestException(message: errorMsg, code: errorCode);
    ok = false;
  }

  RequestResponse.failureFormResponse({dynamic? data}) {
    error = BadResponseException(data);
    ok = false;
  }

  // 失败的错误
  RequestResponse.failureFromError([HttpException? error]) {
    error = error ?? UnknownException();
    ok = false;
  }
}
