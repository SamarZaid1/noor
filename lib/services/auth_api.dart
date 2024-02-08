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

  /* Future createAccountFun({
    required String phone,
    required String password,
    required String localName,
    required String email,
    required String userName,
    required int gradeId,
    required int tenantId,
    required int classId,
  }) async {
    try {
      var response = await dio.post("${RouteApi.AUTH_REGISTER}",
          options: Options(headers: {
            "Content-Type": "application/json",
            "X-Version": "1.0",
          }),
          data: {
            "LocalName": localName,
            "UserName": userName,
            "Password": password,
            "Email": email,
            "MobileNo": phone,
            "GradeId": gradeId,
            "TenantId": tenantId,
            "ClassId": classId
          });
      print(response.data);
      if (response.statusCode == 200) {
        return response.data;
      } else {
        showSnakBarErorr(msg: "no response", color: ThemeColor.errorColor);
      }
    } catch (e) {
      throw HandlerExptionsHepler().getMsgError(e);
    }
  }

  Future forgetPassFun({required String username}) async {
    try {
      var response = await dio.get(
        "${RouteApi.AUTH_FORGET_PASSWORD}?UserName=${username}",
        options: Options(headers: {
          "Content-Type": "application/json",
          "X-Version": "1.0",
        }),
      );
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

  Future newPassFun(
      {required int user_id,
      required String password,
      required String oldPassword}) async {
    try {
      var response = await dio.get(
        "${RouteApi.AUTH_CHANGE_PASSWORD}?UserId=$user_id&OldPassword=$oldPassword&NewPassword=$password",
        options: Options(headers: {
          "Content-Type": "application/json",
          "X-Version": "1.0",
        }),
      );
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

  Future getProfile(int userid) async {
    try {
      var response = await dio.get(
        "${RouteApi.PROFILE}?Id=$userid",
        options: buildCacheOptions(Duration(days: 7),
            forceRefresh: true,
            options: Options(headers: {
              "Content-Type": "application/x-www-form-urlencoded",
              "X-Version": "1.0",
              "Authorization": "Bearer " + await GetStorage().read('token')
            })),
      );
      if (response.data['isSuccess'] == false) {
        showSnakBarErorr(
            msg: "${response.data['messages']}", color: ThemeColor.errorColor);
        return null;
      } else {
        return response.data['data'];
      }
    } catch (e) {
      throw HandlerExptionsHepler().getMsgError(e);
    }
  }

  Future updateAccountFun({
    required String phone,
    required int id,
    required String localName,
    required String email,
    required String userName,
    required int gradeId,
    required int tenantId,
    required int classId,
  }) async {
    try {
      var response = await dio.post("${RouteApi.USER_UPDATE}",
          options: Options(headers: {
            "Content-Type": "application/json",
            "X-Version": "1.0",
            "Authorization": "Bearer " + await GetStorage().read('token')
          }),
          data: {
            "LocalName": localName,
            "UserName": userName,
            "id": id,
            "Email": email,
            "MobileNo": phone,
            "GradeId": gradeId,
            "TenantId": tenantId,
            "ClassId": classId
          });
      print(response.data);
      if (response.statusCode == 200) {
        return response.data;
      } else {
        showSnakBarErorr(msg: "no response", color: ThemeColor.errorColor);
      }
    } catch (e) {
      throw HandlerExptionsHepler().getMsgError(e);
    }
  }

  Future getSteps() async {
    try {
      var response = await dio.get(
        "${RouteApi.GET_STEPS}",
        options: buildCacheOptions(Duration(days: 7),
            forceRefresh: true,
            options: Options(headers: {
              "Content-Type": "application/x-www-form-urlencoded",
              "X-Version": "1.0",
            })),
      );
      if (response.data['isSuccess'] == false) {
        showSnakBarErorr(
            msg: "${response.data['messages']}", color: ThemeColor.errorColor);
        return null;
      } else {
        return response.data['data'];
      }
    } catch (e) {
      throw HandlerExptionsHepler().getMsgError(e);
    }
  }*/
}
