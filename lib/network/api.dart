import 'package:dio/dio.dart';
import 'package:flutter_study/models/ebook_list_model.dart';
import 'package:flutter_study/network/factory/gw_cms_dio.dart';
import 'package:flutter_study/network/http_manager.dart';
import 'package:flutter_study/network/response_data.dart';

class GwCmsApi {
  static Dio baseDio = GwCmsDio.dio;

  static fetchTokenByAuth() async {
    ResponseData response = await HttpManager.post(
      dio: baseDio,
      path: "/test",
      params: {
        'Auth': "KG",
        'Sex': 1,
      },
    );
    return response.parseJson<EbookListModel>();
  }
}
