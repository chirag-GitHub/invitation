import 'package:flutter/material.dart';
import 'package:quotanic/configs/config.dart';
import 'package:quotanic/services/session_manager/session_controller.dart';

class NoMessageWidget extends StatefulWidget {
  const NoMessageWidget({super.key});

  @override
  State<NoMessageWidget> createState() => _NoMessageWidgetState();
}

class _NoMessageWidgetState extends State<NoMessageWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * .15),
          AssetsHelper.getSvgIcon(
            height: 15.h,
              SC.userThemeMode == ThemeMode.light
                  ? AssetUrl.noMessageLight
                  : AssetUrl.noMessageDark,
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
