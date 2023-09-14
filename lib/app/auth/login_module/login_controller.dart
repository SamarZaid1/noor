import 'package:noor/core/contracts/controller.dart';
import 'package:noor/core/share/erorr.dart';
import 'package:noor/core/theme/colors.dart';
import 'package:noor/data/user_data.dart';
import 'package:noor/routes/routes.dart';
import 'package:noor/services/auth_api.dart';
import 'package:noor/services/user_contorller.dart';
import 'package:noor/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends Contorller {
  RxBool hidePassword = true.obs;
  late TextEditingController passwordTextController = TextEditingController();
  late TextEditingController userphoneTextController = TextEditingController();
  final isValidphone = true.obs;
  final isLoading = false.obs;
  // final user = UserData().obs;
  String cCode = "+966";
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  final UserContorller userContorller = Get.put(UserContorller());

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    //loginKey.currentState!.dispose();
    //passwordTextController.dispose();
    //userphoneTextController.dispose();
    super.onClose();
  }

  login(userName, password) async {
    if (isLoading.value) return;
    if (loginKey.currentState!.validate()) {
      isLoading.value = true;
      var response =
          await AuthApi().loginFun(userName: userName, password: password);
      if (response["success"] == true) {
        userContorller.user.value = await UserData.fromJson(response['data']);
        if (userContorller.user.value.name != "") {
          await GetStorage().write('token', userContorller.user.value.name);
          await UserServiceGetStorage()
              .saveUser(data: userContorller.user.value.toJson());
          isLoading.value = false;
          /*  showSnakBarErorr(
              msg: "تم انشاء الحساب بنجاح ", color: ThemeColor.successColor);*/
          Get.offAllNamed(Routes.HomePage);
        } else {
          showSnakBarErorr(msg: "Token is empty", color: ThemeColor.errorColor);
          isLoading.value = false;
        }
      } else {
        showSnakBarErorr(
            msg: "${response['messages']}", color: ThemeColor.errorColor);
        isLoading.value = false;
      }
    }
  }
}
