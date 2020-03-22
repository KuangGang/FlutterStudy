import 'package:dio/dio.dart';

class BaseDio {
  static const int CONNECT_TIMEOUT = 10000;
  static const int SEND_TIMEOUT = 30000;
  static const int RECEIVE_TIMEOUT = 5000;

  Dio createDio(String baseUrl) {
    Dio dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: CONNECT_TIMEOUT,
      sendTimeout: SEND_TIMEOUT,
      receiveTimeout: RECEIVE_TIMEOUT,
    ));

    dio.interceptors.addAll(getExtraInterceptors());
    return dio;
  }

  List<Interceptor> getExtraInterceptors() {
    List<Interceptor> interceptors = List<Interceptor>();
    interceptors.add(LogInterceptor(
      request: false,
      requestHeader: true,
      responseHeader: false,
      responseBody: false,
    ));
    return interceptors;
  }
}
