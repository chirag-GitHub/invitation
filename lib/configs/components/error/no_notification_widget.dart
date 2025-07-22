import 'package:flutter/material.dart';
import 'package:quotanic/configs/config.dart';
import 'package:quotanic/services/session_manager/session_controller.dart';

class NoNotificationWidget extends StatefulWidget {
  const NoNotificationWidget({super.key});

  @override
  State<NoNotificationWidget> createState() => _NoNotificationWidgetState();
}

class _NoNotificationWidgetState extends State<NoNotificationWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * .15),
          AssetsHelper.getSvgIcon(
            height: 15.h,
              SC.userThemeMode == ThemeMode.light
                  ? AssetUrl.noNotificationLight
                  : AssetUrl.noNotificationDark,
              color: Colors.transparent),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(S.of(context).noDataFound,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: Theme.of(context).disabledColor.withValues(alpha: 0.2))),
          ),

          // ButtonView(
          //   width: 100,
          //   onPressed: widget.onPress,
          //   text: 'RETRY',
          // )
        ],
      ),
    );
  }
}
