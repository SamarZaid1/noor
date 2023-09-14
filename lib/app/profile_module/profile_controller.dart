import 'package:noor/core/contracts/controller.dart';
import 'package:noor/services/user_contorller.dart';
import 'package:get/get.dart';

class ProfileController extends Contorller {
  RxString search = "".obs;
  final UserContorller userContorller = Get.put(UserContorller());

  @override
  void onInit() {
    super.onInit();
  }

  logOut() async {
    await userContorller.logut();
  }
}
