


import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Container empty(String msg) {
  return Container(
    height: double.infinity,
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/empty.gif",
          width: 100.w,
        ),
        Text(msg)
      ],
    ),
  );
}