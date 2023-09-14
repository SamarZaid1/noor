import 'package:flutter/material.dart'
    show
    AlwaysStoppedAnimation,
    CircularProgressIndicator,
    Color,
    Colors,
    Container;

sizedCircularProgress({Color color = Colors.white, double size = 25}) {
  return Container(
    width: size,
    height: size,
    child: CircularProgressIndicator(
      strokeWidth: 1.5,
      valueColor: AlwaysStoppedAnimation<Color>(color),
    ),
  );
}
