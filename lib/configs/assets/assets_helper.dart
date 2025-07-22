import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AssetsHelper {
  static SvgPicture getSvgIcon(
    String name, {
    double? height,
    double? width,
    Color? color,
    BoxFit? fit,
  }) {
    return SvgPicture.asset(name,
        height: height,
        width: width,
        colorFilter: ColorFilter.mode(
          color ?? Colors.red,
          BlendMode.srcATop,
        ),
      fit: fit??BoxFit.contain,
    );
  }

  static Image getImage(
    String name, {
    double? height,
    double? width,
    Color? color,
    BoxFit? fit,
  }) {
    return Image.asset(
      name,
      height: height,
      width: width,
      fit: fit,
      color: color,
    );
  }
}
