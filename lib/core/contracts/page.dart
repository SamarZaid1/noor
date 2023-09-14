import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:noor/core/contracts/view.dart';



class Page extends GetPage {
  late String name;
  late View1 view;

  Bindings? binding;
  List<GetMiddleware>? middlewares;

  Page({
    required String name,
    required Widget view,
    this.binding,
    this.middlewares,
  }) : super(
            binding: binding,
            name: name,
            page: () => view,
            middlewares: middlewares);
}
