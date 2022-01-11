import 'package:dio/dio.dart';

import 'request_response.dart';

/// Response 解析
abstract class RequestTransformer {
  RequestResponse parse(Response response);
}

class DefaultRequestTransformer extends RequestTransformer {
  @override
  RequestResponse parse(Response response) {
    return RequestResponse.success(response.data);
  }

  /// 单例对象
  static final DefaultRequestTransformer _instance = DefaultRequestTransformer._internal();

  /// 内部构造方法，可避免外部暴露构造函数，进行实例化
  DefaultRequestTransformer._internal();

  /// 工厂构造方法，这里使用命名构造函数方式进行声明
  factory DefaultRequestTransformer.getInstance() => _instance;
}

// 新闻
class NewsRequestTransformer extends RequestTransformer {
  @override
  RequestResponse parse(Response response) {
    return RequestResponse.success(response.data["newslist"]);
  }

  /// 单例对象
  static final NewsRequestTransformer _instance = NewsRequestTransformer._internal();

  /// 内部构造方法，可避免外部暴露构造函数，进行实例化
  NewsRequestTransformer._internal();

  /// 工厂构造方法，这里使用命名构造函数方式进行声明
  factory NewsRequestTransformer.getInstance() => _instance;
}
