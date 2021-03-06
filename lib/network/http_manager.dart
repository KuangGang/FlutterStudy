import 'package:dio/dio.dart';
import 'package:flutter_study/utils/network_util.dart';
import 'package:quiver/strings.dart';

import 'exception/dio_exception_handler.dart';
import 'exception/http_exception_handler.dart';
import 'response_data.dart';

class HttpManager {
  // GET请求
  static get({dio, path, params, headers}) async =>
      await _request(dio, path, params, headers, Options(method: "GET"));

  // POST请求
  static post({dio, path, params, headers}) async =>
      await _request(dio, path, params, headers, Options(method: 'POST'));

  // 网络请求
  static _request(dio, path, params, headers, Options options) async {
    bool connected = await NetworkUtil.isConnected();
    if (!connected) {
      return HttpExceptionHandler.networkError();
    }

    if (dio == null) {
      return;
    }
    bool isGetRequest = equalsIgnoreCase("get", options.method);

    if (headers != null) {
      options.headers = headers;
    }

    Response response;
    try {
      response = await dio.request(path,
          queryParameters: isGetRequest ? params : null,
          data: isGetRequest ? null : params,
          options: options);
    } on DioError catch (e) {
      return DioExceptionHandler.handleDioException(e);
    }

    if (response?.statusCode == 200 || response?.statusCode == 201) {
      return ResponseData(code: 0, msg: 'OK', json: response.data);
    } else {
      return HttpExceptionHandler.handleHttpException(response?.statusCode);
    }
  }
}
