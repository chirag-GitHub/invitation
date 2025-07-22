import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotanic/configs/config.dart';
import 'package:quotanic/features/settings/bloc/setting_bloc.dart';
import 'package:quotanic/features/settings/view/widget/notification_setting_widget.dart';

import 'widget/setting_error_widget.dart';
import 'widget/shimmer_notification_list_widget.dart';

class NotificationSettingScreen extends StatefulWidget {
  const NotificationSettingScreen({super.key});

  @override
  State<NotificationSettingScreen> createState() =>
      _NotificationSettingScreenState();
}

class _NotificationSettingScreenState extends State<NotificationSettingScreen> {
  late SettingBloc _settingBloc;

  @override
  void initState() {
    super.initState();
    _settingBloc = SettingBloc();
    _settingBloc.add(FetchNotificationSetting());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        surfaceTintColor: Theme.of(context).colorScheme.surface,
        title: Text(
          S.current.notification,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: [
          BlocProvider(
            create: (context) => _settingBloc,
            child: BlocBuilder<SettingBloc, SettingStates>(
              builder: (context, state) {
                if (state.notificationModel.apiData == null) {
                  return SizedBox();
                }
                return Switch(
                  trackOutlineColor: WidgetStatePropertyAll(
                      Theme.of(context).colorScheme.surface),
                  inactiveTrackColor: Theme.of(context).scaffoldBackgroundColor,
                  inactiveThumbColor: Theme.of(context).primaryColor,
                  value: state.notification,
                  thumbColor:
                      WidgetStatePropertyAll(Colors.white),
                  activeTrackColor: Theme.of(context).colorScheme.primary,
                  onChanged: (value) {
                    context.read<SettingBloc>().add(ChangeNotification(
                          isAll: '1',
                          id: '0',
                          isEnable: state.notification ? '0' : '1',
                        ));
                  },

                );
              },
            ),
          ),
          SizedBox(width: 10)
        ],
      ),
      body: BlocProvider(
        create: (context) => _settingBloc,
        child: BlocBuilder<SettingBloc, SettingStates>(
          builder: (context, state) {
            switch (state.notificationModel.status) {
              /// last variable in search model
              case Status.loading:
                return ShimmerNotificationListWidget();
              case Status.error:
                return SettingErrorWidget(); // Widget for displaying error state
              case Status.completed:
                if (state.notificationModel.apiData == null) {
                  return NoDataWidget();
                }
                return NotificationSettingWidget(
                    state.notificationModel.apiData!.notificationData
                        .notificationSettingList,
                    _settingBloc,
                    state.notification);

              default:
                return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
