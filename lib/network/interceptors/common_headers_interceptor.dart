import 'package:dio/dio.dart';

class CommonHeadersInterceptor extends Interceptor {
  @override
  Future onRequest(RequestOptions options) async {
    options.headers = new Map();
    return super.onRequest(options);
  }
}
