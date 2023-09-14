import 'package:get/get_connect.dart';
import 'package:get/instance_manager.dart';

abstract class Services<Model> extends GetConnect with GetxServiceMixin {
  Future<Model?> create({required Map<String, Model> data});
  Future<Model?> update({required Model model});
  Future<bool?> delete_({required String id});
  Future<List<Model>?> fetchAll({Map<String, dynamic> fillters, int page});
  Future<Model?> fetchOne({required String id});
}
