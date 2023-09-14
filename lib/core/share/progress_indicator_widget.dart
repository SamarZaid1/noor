
import 'package:flutter/material.dart';
import 'package:noor/core/theme/colors.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  final double value;
  const ProgressIndicatorWidget({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      backgroundColor: ThemeColor.hintColor,
      valueColor: AlwaysStoppedAnimation<Color>( ThemeColor.yellwColor),
      value: value,
    );
  }
}