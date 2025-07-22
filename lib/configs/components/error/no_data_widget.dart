import 'package:flutter/material.dart';
import 'package:quotanic/configs/config.dart';
import 'package:quotanic/services/session_manager/session_controller.dart';

class NoDataWidget extends StatelessWidget {
  const NoDataWidget({super.key, this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            AssetsHelper.getSvgIcon(
                height: 15.h,
                SC.userThemeMode == ThemeMode.light
                    ? AssetUrl.noDataLight
                    : AssetUrl.noDataDark,
                color: Colors.transparent),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(message ?? S.of(context).noDataFound,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Theme.of(context)
                          .disabledColor
                          .withValues(alpha: 0.2))),
            ),

            // ButtonView(
            //   width: 100,
            //   onPressed: widget.onPress,
            //   text: 'RETRY',
            // )
          ],
        ),
      ),
    );
  }
}
