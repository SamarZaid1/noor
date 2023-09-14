import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:noor/core/contracts/controller.dart';
import 'package:noor/data/user_data.dart';
import 'package:noor/routes/routes.dart';
import 'package:noor/services/user_service.dart';

class UserContorller extends Contorller {
  final user = UserData.none().obs;
  final isLoadingBalance = false.obs;
  final isGetUser = false.obs;
 // String? get token => user.value.token;

  @override
  void onInit() {
    ever(user, (_) => saveToGetStore());

    super.onInit();
  }
  logOut() async {
    await logut();
  }
  @override
  Future checkIsLogined() async {
    UserData? c = await UserServiceGetStorage().getUser();

    if (c != null) {
      user.value = c;
      if (c.name != ""  /*&& c.token != ""*/) {
        Get.offAllNamed(Routes.HomePage);
      }
      return Future.value(null);
    } else {
      Get.offAllNamed(Routes.LoginPage);
    }
  }

  saveToGetStore() async {
    await UserServiceGetStorage().saveUser(data: user.value.toJson());
  }

  logut({int secounds = 0, bool withNavgtion = true}) async {
    await UserServiceGetStorage().logout();
    // await PushNotificationService().unSubscribeToNotificationUser();
    user.value = UserData.none();
    await Future.delayed(Duration(seconds: secounds), () {
      if (withNavgtion) Get.offAllNamed(Routes.LoginPage);
    });
  }
}
