import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotanic/configs/config.dart';

import '../../bloc/setting_bloc.dart';

/// A widget for displaying error messages related to movies.
class SettingErrorWidget extends StatelessWidget {
  const SettingErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingBloc, SettingStates>(
      builder: (context, state) {
        // Checking if the error message indicates no internet connection
        if (state.notificationModel.message.toString() ==
                S.current.noInternetConnection ||
            state.notificationModel.message.toString() ==
                S.current.noInternetConnection ||
            state.notificationModel.message.toString() ==
                S.current.noInternetConnection) {
          // Displaying InternetExceptionWidget if there's no internet connection
          return InterNetExceptionWidget(onPress: () {
            context.read<SettingBloc>().add(FetchNotificationSetting());
          });
        } else {
          // Displaying error message as a clickable text if it's not related to internet connection
          return AppErrorWidget(
              onPress: () {},
              message: '${state.notificationModel.message} notificationModel');
        }
      },
    );
  }
}
