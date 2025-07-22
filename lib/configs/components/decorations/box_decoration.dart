import 'package:flutter/material.dart';
import 'package:quotanic/configs/themes/theme_colors.dart';

BoxDecoration boxDecoration(
  color,
  borderColor,
  borderRadius,
  borderStroke,
) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(borderRadius),
    border: Border.all(width: borderStroke, color: borderColor),
  );
}

BoxDecoration boxDecorationDashboard() {
  return BoxDecoration(
    color: ThemeColor.whiteColor,
    boxShadow: [
      BoxShadow(
        color: ThemeColor.blackColor.withAlpha(20),
        blurRadius: 10,
        spreadRadius: 2,
      ),
    ],
    borderRadius: BorderRadius.circular(15),
  );
}
