/*
import 'dart:io';
import 'package:noor/core/extention/string_route_mange_extension.dart';
import 'package:noor/core/utils/helper/handler_helper.dart';
import 'package:noor/routes/routes.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../services/user_contorller.dart';

final locator = GetIt.instance;
DioCacheManager? _manager;

setup() async {
  final dio = Dio();
  final UserContorller userContorller = Get.put(UserContorller());
  await GetStorage.init();

  dio..interceptors.add(getCacheManager().interceptor);

  dio.options
    ..baseUrl = ''.host
    ..followRedirects = false
    ..validateStatus = (int? status) {
      if (status == null) throw "Check Intternet Connection";
      if (status == 401) {
        //userContorller.logut();
        Get.offAllNamed(Routes.LoginPage)!;
      */
/*  controller.login(
            userContorller.user.value.p,controller.passwordTextController.value.text);
*//*

        throw "plz login agin";
      }
      return status > 0;
    };
  (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
      (HttpClient client) {
    client.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    return client;
  };
  dio
    ..interceptors.add(InterceptorsWrapper(onError: (e, handler) async {
      String eMsg = HandlerExptionsHepler.handle(e.error);
      return handler.reject(
        DioError(
          requestOptions: e.requestOptions,
          error: eMsg,
          response: null,
          type: DioErrorType.other,
        ),
      );
    }));

  if (kDebugMode)
    dio.interceptors.add(PrettyDioLogger(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 200));

  locator.registerLazySingleton<Dio>(() => dio);
}

DioCacheManager getCacheManager() {
  if (null == _manager) {
    _manager = DioCacheManager(CacheConfig(baseUrl: "".host));
  }
  return _manager!;
}
*/
