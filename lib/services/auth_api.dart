import 'package:dio/adapter.dart';
import 'package:dio/dio.dart' as httpDio;
import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:get_storage/get_storage.dart';
import 'package:noor/core/share/erorr.dart';
import 'package:noor/core/theme/colors.dart';
import '../core/locator.dart';
import '../core/utils/helper/handler_helper.dart';
import '../routes/api.dart';
import 'dart:io';

class AuthApi {
  var dio = Dio();
  Future loginFun({required String userName, required String password}) async {
    try {
      //"{'email':'2024/01/527','password':'1234'}"
      var response = await dio.get(
        "${RouteApi.HOST}${RouteApi.AUTH_LOGIN}",
        options: Options(headers: {
          "Authorization": "Basic Zzd0RkNNTHBTN3hid1FmMHRkVUxhUGdHck5zaExweEs6",
          "Accept": "*/*",
          "db_name": "${RouteApi.DB}",
          "Login": "{'email':'${userName}','password':'${password}'}"
        }),
      );
      print("samar${response.data}");
      if (response.statusCode == 200) {
        return response.data;
      } else {
        showSnakBarErorr(msg: "response error", color: ThemeColor.errorColor);
      }
    } catch (e) {
      print("object${e.toString()}");
      throw HandlerExptionsHepler().getMsgError(e);
    }
  }

  Future newPassFun(
      {required String userName,
      required String password,
      required String newPassword}) async {
    try {
      var response = await dio.post("${RouteApi.CHANGE_PASSWORD}",
          options: Options(headers: {
            "Authorization":
                "Basic Zzd0RkNNTHBTN3hid1FmMHRkVUxhUGdHck5zaExweEs6",
            "Accept": "*/*",
            "db_name": "${RouteApi.DB}",
            "Login": "{'email':'${userName}','password':'${password}'}"
          }),
          data: {
            "new_password": "${newPassword}",
          });
      print("samar${response.data}");
      if (response.statusCode == 200) {
        return response.data;
      } else {
        showSnakBarErorr(msg: "no response", color: ThemeColor.errorColor);
      }
    } catch (e) {
      throw HandlerExptionsHepler().getMsgError(e);
    }
  }
}
