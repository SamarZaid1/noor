import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SizeScreen extends StatelessWidget {
  final Widget? smallScreen;
  final Widget? mediumScreen;
  final Widget? largeScreen;
  const SizeScreen({Key? key, this.smallScreen, this.mediumScreen, this.largeScreen}):super(key: key);


  static bool isSmallScreen(){
     return Get.context!.width<700;
  }
  static bool isMediumScreen(){
    return Get.context!.width>=700&&Get.context!.width<=1100;
  }
  static bool isLargeScreen(){
    return Get.context!.width>1100;
  }
  static bool isLandscape(){
    return Get.context!.isLandscape;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints){
          if(constraints.maxWidth>1000){
            return largeScreen!;
          }else if(constraints.maxWidth>700&&constraints.maxWidth<=1200){
            return mediumScreen??largeScreen!;
          }
          else{
        return smallScreen ?? largeScreen!;
      }
    });
  }
}
