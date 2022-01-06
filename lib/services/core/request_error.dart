// 公共错误对象
class HttpException implements Exception {
  final String? _message;
  final int? _code;

  String get message => _message ?? runtimeType.toString();

  int get code => _code ?? -1;

  HttpException([this._message, this._code]);

  @override
  String toString() {
    return "code:$code--message=$message";
  }
}

/// 客户端请求错误
class BadRequestException extends HttpException {
  BadRequestException({String? message, int? code}) : super(message, code);
}

/// 服务端响应错误
class BadServiceException extends HttpException {
  BadServiceException({String? message, int? code}) : super(message, code);
}

/// 未知异常
class UnknownException extends HttpException {
  UnknownException([String? message]) : super(message);
}

/// 取消异常
class CancelException extends HttpException {
  CancelException([String? message]) : super(message);
}

/// 网络异常
class NetworkException extends HttpException {
  NetworkException({String? message, int? code}) : super(message, code);
}

/// 401
class UnauthorisedException extends HttpException {
  UnauthorisedException({String? message, int? code = 401}) : super(message);
}

/// 异常
class BadResponseException extends HttpException {
  dynamic? data;

  BadResponseException([this.data]) : super();
}
