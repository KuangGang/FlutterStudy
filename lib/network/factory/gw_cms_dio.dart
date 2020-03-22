import 'package:dio/dio.dart';
import 'package:flutter_study/constants.dart';
import 'package:flutter_study/network/interceptors/common_headers_interceptor.dart';

import 'base_dio.dart';

class GwCmsDio extends BaseDio {
  static Dio _dio;

  static Dio get dio {
    if (_dio == null) {
      _dio = GwCmsDio().createDio(UrlConstants.getGwCmsHost());
    }
    return _dio;
  }

  @override
  List<Interceptor> getExtraInterceptors() {
    List<Interceptor> interceptors = super.getExtraInterceptors();
    interceptors.add(CommonHeadersInterceptor());
    return interceptors;
  }
}
