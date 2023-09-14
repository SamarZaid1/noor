import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:noor/core/share/editTextFormFiled.dart';
import 'package:noor/core/share/sizedCircularProgress.dart';
import 'package:noor/core/theme/colors.dart';
import 'package:noor/core/theme/text_font_family.dart';
import 'package:noor/core/utils/helper/validate_helper.dart';
import 'package:noor/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'login_controller.dart';
import 'package:noor/core/contracts/view.dart';

class LoginView extends View1<LoginController> {
  //final LoginController controller = Get.put(LoginController());
//اذا احتجت استدعي كنترولار ثاني استخدم ال getx واذكر اسم الكنترولار الي معرف داخل البيندنق
  @override
  Widget build(BuildContext context) {
    var validtor = ValidateHelper.of(context);
    return Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
            appBar: AppBar(),
            body: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Container(
                  padding: EdgeInsets.only(top: 0.h),
                  child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Form(
                        key: controller.loginKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 8.w, left: 8.w),
                              child: SvgPicture.asset(
                                "assets/icons/login.svg",
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 4.w, left: 4.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "loginTitle".tr,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1!
                                        .copyWith(
                                            fontFamily: AppFonts.cairo,
                                            fontSize: 8.sp,
                                            color: ThemeColor.grayColor),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Text(
                                    "login".tr,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: AppFonts.medium,
                                            fontSize: 18.sp,
                                            color: ThemeColor.primaryColor),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    flex: 5,
                                    child: CustomEditTextFormFiled()
                                        .MyInputField(
                                            prefixIcon: Icon(
                                              Icons.phone,
                                              color: ThemeColor.grayColor,
                                            ),
                                            inputFormatters: [
                                              FilteringTextInputFormatter(
                                                  RegExp("[0-9]"),
                                                  allow: true),
                                              LengthLimitingTextInputFormatter(
                                                  9)
                                            ],
                                            label: 'phoneNumber'.tr,
                                            hint: 'enterPhoneNumber'.tr,
                                            //  validatorobject: validtor.phone,
                                            validatorobject: validtor.required,
                                            textInputType: TextInputType.text,
                                            controller: controller
                                                .userphoneTextController,
                                            context: context)),
                              ],
                            ),
                            Obx(() => CustomEditTextFormFiled().MyInputField(
                                validatorobject: validtor.required,
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: ThemeColor.grayColor,
                                ),
                                suffixIcon: IconButton(
                                  icon: controller.hidePassword.value
                                      ? const Icon(
                                          Icons.visibility_off,
                                          color: ThemeColor.grayColor,
                                        )
                                      : const Icon(
                                          Icons.visibility,
                                          color: ThemeColor.primaryColor,
                                        ),
                                  onPressed: () {
                                    controller.hidePassword.value =
                                        !controller.hidePassword.value;
                                  },
                                ),
                                label: 'passWord'.tr,
                                hint: 'enterPassword'.tr,
                                textInputType: TextInputType.visiblePassword,
                                controller: controller.passwordTextController,
                                hide: controller.hidePassword.value,
                                context: context)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    //  Get.to(ForgetPasswordView());
                                    // Get.toNamed(Routes.ForgetPasswordPage);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15.0),
                                    child: Text(
                                      'didForgetPassword'.tr,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(
                                              fontSize: 8.sp,
                                              color: ThemeColor.grayColor),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                        Color>(
                                                    ThemeColor.primaryColor),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        color: ThemeColor
                                                            .primaryColor),
                                                    borderRadius:
                                                        BorderRadius.vertical(
                                                      bottom:
                                                          Radius.circular(10),
                                                      top: Radius.circular(10),
                                                    ))),
                                          ),
                                          onPressed: () {
                                            // Get.toNamed(Routes.HomePage);
                                            controller.login(
                                                "userName", "password");
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.all(4.w),
                                            child: Obx(
                                              () => controller.isLoading.value
                                                  ? sizedCircularProgress()
                                                  : Text(
                                                      'login'.tr,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headline1!
                                                          .copyWith(
                                                              fontFamily:
                                                                  AppFonts
                                                                      .large,
                                                              fontSize: 10.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.white),
                                                    ),
                                            ),
                                          )),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                        Color>(
                                                    ThemeColor.accentColor),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        color: ThemeColor
                                                            .accentColor),
                                                    borderRadius:
                                                        BorderRadius.vertical(
                                                      bottom:
                                                          Radius.circular(10),
                                                      top: Radius.circular(10),
                                                    ))),
                                          ),
                                          onPressed: () {
                                            Get.toNamed(Routes.HomePage);
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.all(3.w),
                                            child: SvgPicture.asset(
                                              "assets/icons/touchID.svg",
                                            ),
                                          )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                          ],
                        ),
                      )),
                ))));
  }
}
