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
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:get_storage/get_storage.dart';

class LoginController extends Contorller {
  RxBool hidePassword = true.obs;
  late TextEditingController passwordTextController = TextEditingController();
  late TextEditingController userphoneTextController = TextEditingController();
  final isValidphone = true.obs;
  final isLoading = false.obs;
  // final user = UserData().obs;
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
    print("one3");
    if (isLoading.value) return;
    if (loginKey.currentState!.validate()) {
      isLoading.value = true;
      print("one");
      var response =
          await AuthApi().loginFun(userName: userName, password: password);
      userContorller.user.value = await UserData.fromJson(response);
      if (userContorller.user.value.success == true) {
        await GetStorage().write('token', userContorller.user.value.data!.name);
        await GetStorage().write('email', userName);
        await GetStorage().write('password', password);
        await UserServiceGetStorage()
            .saveUser(data: userContorller.user.value.toJson());
        isLoading.value = false;
        showSnakBarErorr(
            msg: "تم تسجيل الحساب بنجاح ", color: ThemeColor.successColor);
        Get.offAllNamed(Routes.HomePage);
      } else {
        showSnakBarErorr(
            msg: "${response['messages']} خطااا", color: ThemeColor.errorColor);
        isLoading.value = false;
      }
    }
  }
}
