import 'package:noor/core/contracts/servicess.dart';
import 'package:noor/data/user_data.dart';



abstract class BaseUserServiceGetStorage extends Services {
  String get KEY_STORE;

  saveUser({required Map<String, dynamic> data});
  Future<UserData?> getUser();

  @override
  Future create({required Map<String, dynamic> data}) {
    throw UnimplementedError();
  }

  @override
  Future<bool?> delete_({required String id}) {
    throw UnimplementedError();
  }

  @override
  Future<List?> fetchAll({Map<String, dynamic>? fillters, int? page}) {
    throw UnimplementedError();
  }

  @override
  Future fetchOne({required String id}) {
    throw UnimplementedError();
  }

  @override
  Future update({required model}) {
    throw UnimplementedError();
  }
}
