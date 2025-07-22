import 'package:flutter/material.dart';

class ButtonView extends StatelessWidget {
  const ButtonView({
    super.key,
    required this.onPressed,
    required this.text,
    this.width,
    this.margin,
    this.color,
    this.colorBorder,
    this.height,
    this.style,
    this.radius,
  });

  final String text;
  final Function onPressed;
  final double? height;
  final double? width;
  final TextStyle? style;
  final EdgeInsets? margin;
  final Color? color;
  final Color? colorBorder;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Material(
        color: color ?? Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(radius??8),
        child: InkWell(
          borderRadius: BorderRadius.circular(radius??8),
          onTap: () {
            onPressed();
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius??8),
                border: Border.all(color: colorBorder??Colors.transparent)),
            width: width,
            height: height ?? 45,
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(20, 2, 20, 2),
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: style ?? Theme.of(context).textTheme.labelLarge!.copyWith(color: Colors.white,fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
