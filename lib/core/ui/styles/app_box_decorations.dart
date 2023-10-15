import 'package:flutter/material.dart';

const double radiusXL = 40;

class AppBoxDecoration {
  static BoxDecoration topBorderRounded = const BoxDecoration(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(radiusXL),
      topRight: Radius.circular(radiusXL),
    ),
  );
}
