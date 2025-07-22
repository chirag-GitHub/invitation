import 'package:flutter/material.dart';
import 'package:quotanic/services/session_manager/session_controller.dart';

import '../../config.dart';

class InterNetExceptionWidget extends StatefulWidget {
  final VoidCallback onPress;

  const InterNetExceptionWidget({super.key, required this.onPress});

  @override
  State<InterNetExceptionWidget> createState() =>
      _InterNetExceptionWidgetState();
}

class _InterNetExceptionWidgetState extends State<InterNetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * .15),
          AssetsHelper.getSvgIcon(
              height: 15.h,
              SC.userThemeMode == ThemeMode.light
                  ? AssetUrl.noInternetLight
                  : AssetUrl.noInternetDark,
              color: Colors.transparent),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                  S.current.WeAreUnableToShowResults,
                  // 'We’re unable to show results.\nPlease check your data\nconnection.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(fontSize: 20)),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .05),
          ButtonView(
            width: 100,
            onPressed: widget.onPress,
            text: S.current.retry,
            // text: 'RETRY',
          )
        ],
      ),
    );
  }
}
