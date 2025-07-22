import 'package:flutter/material.dart';
import 'package:quotanic/configs/config.dart';

void customConfirmDialog(BuildContext context,
    {required Function callback,
    required String title,
    required String content,
    Color? buttonNegativeColor,
    Color? buttonPositiveColor,
    Color? btnNegativeBorderColor,
    Color? btnPositiveBorderColor,
    TextStyle? btnPositiveTextStyle,
    TextStyle? btnNegativeTextStyle,
    required String buttonPositive,
    required String buttonNegative}) {
  showDialog(
    context: context,
    builder: (context) => Theme(
      data: Theme.of(context).copyWith(dialogBackgroundColor: Colors.orange),
      child: AlertDialog(
        title: title.isNotEmpty ? Text(title) : null,
        content: Text(content),
        actions: [
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: ButtonView(
                  colorBorder: btnNegativeBorderColor,
                  text: buttonNegative,
                  color: buttonNegativeColor ?? Colors.red,
                  style: btnNegativeTextStyle ??
                      Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(color: ThemeColor.whiteColor),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Expanded(
                child: ButtonView(
                  colorBorder: btnPositiveBorderColor,
                  text: buttonPositive,
                  color: buttonPositiveColor,
                  style: btnPositiveTextStyle ??
                      Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(color: ThemeColor.whiteColor),
                  onPressed: () {
                    callback();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
