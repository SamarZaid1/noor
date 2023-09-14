import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HandlerExptionsHepler {
  static String handle(error) {
    if (error is Exception) {
      try {
        String networkExceptions = "";
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.cancel:
              networkExceptions = "ordercancel".tr;
              break;
            case DioErrorType.connectTimeout:
              networkExceptions = "endorder".tr;
              break;

            case DioErrorType.receiveTimeout:
              networkExceptions = "endresponse".tr;
              break;
            case DioErrorType.response:
              switch (error.response!.statusCode) {
                case 400:
                  networkExceptions = "datadenied".tr;
                  break;
                case 401:
                  networkExceptions = "datadenied".tr;
                  break;
                case 403:
                  networkExceptions = "datadenied".tr;
                  break;
                case 404:
                  networkExceptions = "notserver".tr;
                  break;
                case 409:
                  networkExceptions = "conflict".tr;
                  break;
                case 408:
                  networkExceptions = "endorder".tr;
                  break;
                case 500:
                  networkExceptions = "unexecptederror".tr;
                  break;
                case 503:
                  networkExceptions = "notavialbleserver".tr;
                  break;
                default:
                  var responseCode = error.response!.statusCode;
                  networkExceptions =
                      "recive".tr + " $responseCode " + "notfound".tr;
              }
              break;
            case DioErrorType.sendTimeout:
              networkExceptions = "endsend";
              break;
            case DioErrorType.other:
              return "errorfound".tr;
          }
        } else if (error is SocketException) {
          networkExceptions = "connectnet".tr;
        } else {
          networkExceptions = "unexperror".tr;
        }
        return networkExceptions;
      } on FormatException catch (e) {
        // Helper.printError(e.toString());
        print(e);
        return "notimplement".tr;
      } catch (_) {
        return "unexperror".tr;
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return "notimplement".tr;
      } else {
        return "unexperror".tr;
      }
    }
  }

  String getMsgError(dynamic error) {
    if (error is DioError) {
      return error.message;
    } else
      return error.toString();
  }
}
