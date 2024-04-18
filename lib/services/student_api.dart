import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:dio/dio.dart' as httpDio;
import 'package:get_storage/get_storage.dart';
import 'package:noor/core/locator.dart';
import 'package:noor/core/share/erorr.dart';
import 'package:noor/core/theme/colors.dart';
import 'package:noor/data/user_data.dart';
import 'package:noor/routes/api.dart';
import 'package:noor/services/user_contorller.dart';
import '../core/utils/helper/handler_helper.dart';

class StudentApi {
  //var dio = locator<httpDio.Dio>();
  var dio = Dio();

  Future getStudent(String order, UserData user) async {
    try {
      var response = await dio.get(
        "${RouteApi.HOST}${RouteApi.STUDENT}?order=date desc",
        options:  Options(headers: {
              "Authorization":
                  "Basic Zzd0RkNNTHBTN3hid1FmMHRkVUxhUGdHck5zaExweEs6",
              "Accept": "*/*",
              "db_name": "${RouteApi.DB}",
              "Login":
                  "{'email':'${await GetStorage().read('email')}','password':'${await GetStorage().read('password')}'}"
            }),
      );
      print("samar${response.data}");
      if (response.data['success'] == false) {
        showSnakBarErorr(
            msg: "${response.data['messages']}", color: ThemeColor.errorColor);
        return null;
      } else {
        print("samar${response.data['data']}");
        return response.data; //json.decode(response.data);
      }
    } catch (e) {
      throw HandlerExptionsHepler().getMsgError(e);
    }
  }
}
