import 'package:flutter/material.dart';

class CustomShapeBorder extends ContinuousRectangleBorder {
  const CustomShapeBorder();

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    return Path()
      ..lineTo(0, rect.height + 32)
      ..quadraticBezierTo(0, rect.height, 32, rect.height)
      ..lineTo(rect.width - 32, rect.height)
      ..quadraticBezierTo(rect.width, rect.height, rect.width, rect.height + 32)
      ..lineTo(rect.width, 0.0)
      ..close();
  }
}
