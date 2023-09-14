import 'package:noor/core/contracts/user_service.dart';
import 'package:noor/data/user_data.dart';
import 'package:get_storage/get_storage.dart';

class UserServiceGetStorage extends BaseUserServiceGetStorage {
  var box = GetStorage();

  @override
  String get KEY_STORE => "USER_INFO";

  @override
  Future<UserData?> getUser() async {
    var data = box.read(KEY_STORE);
    print(data);
    return data == null ? null : UserData.fromJson(data);
  }

  @override
  saveUser({required Map<String, dynamic> data}) async {
    await box.write(KEY_STORE, data);
  }

  logout() async {
    await box.write(KEY_STORE, null);
  }
}


