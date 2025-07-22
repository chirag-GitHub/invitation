import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotanic/configs/config.dart';
import 'package:quotanic/features/settings/bloc/setting_bloc.dart';
import 'package:quotanic/services/session_manager/session_controller.dart';

class SettingWidget extends StatefulWidget {
  const SettingWidget({super.key});

  @override
  State<SettingWidget> createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: Colors.grey.withValues(alpha: 0.2),
          height: 1,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, RoutesName.languageScreen);
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              spacing: 20,
              children: [
                CircleAvatar(
                  backgroundColor: Theme
                      .of(context)
                      .colorScheme
                      .surface,
                  child: Icon(
                    Icons.language,
                    color: Theme
                        .of(context)
                        .primaryColor,
                  ),
                ),
                Expanded(
                  child: Text(
                    S.current.language,
                    // 'Language',
                    style: Theme
                        .of(context)
                        .textTheme
                        .labelMedium,
                  ),
                ),
                Row(
                  children: [
                    Text(SC.userLang == 'en' ? 'English' : 'Deutsch'),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Theme
                          .of(context)
                          .primaryColor,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Divider(
          color: Colors.grey.withValues(alpha: 0.2),
          height: 1,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, RoutesName.notificationSettingScreen);
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              spacing: 20,
              children: [
                CircleAvatar(
                  backgroundColor: Theme
                      .of(context)
                      .colorScheme
                      .surface,
                  child: Icon(
                    Icons.notifications,
                    color: Theme
                        .of(context)
                        .primaryColor,
                  ),
                ),
                Expanded(
                  child: Text(
                    S.current.notification,
                    // 'Notification',
                    style: Theme
                        .of(context)
                        .textTheme
                        .labelMedium,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Theme
                      .of(context)
                      .primaryColor,
                ),
                // BlocProvider(
                //   create: (context) => SettingBloc(),
                //   child: BlocBuilder<SettingBloc, SettingStates>(
                //     builder: (context, state) {
                //       return Switch(
                //         trackOutlineColor: WidgetStatePropertyAll(
                //             Theme
                //                 .of(context)
                //                 .colorScheme
                //                 .surface),
                //         inactiveTrackColor: Theme
                //             .of(context)
                //             .colorScheme
                //             .surface,
                //         inactiveThumbColor: Theme
                //             .of(context)
                //             .primaryColor,
                //         value: state.notification,
                //         thumbColor: WidgetStatePropertyAll(
                //             Theme
                //                 .of(context)
                //                 .primaryColor),
                //         activeTrackColor: Theme
                //             .of(context)
                //             .colorScheme
                //             .surface,
                //         onChanged: (value) {
                //           context.read<SettingBloc>().add(ChangeNotification());
                //         },
                //       );
                //     },
                //   ),
                // )
              ],
            ),
          ),
        ),
        Divider(
          color: Colors.grey.withValues(alpha: 0.2),
          height: 1,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            spacing: 20,
            children: [
              CircleAvatar(
                backgroundColor: Theme
                    .of(context)
                    .colorScheme
                    .surface,
                child: Icon(
                  SC.userThemeMode == ThemeMode.light
                      ? Icons.dark_mode
                      : Icons.light_mode,
                  color: Theme
                      .of(context)
                      .primaryColor,
                ),
              ),
              Expanded(
                child: Text(
                  S.current.theme,
                  // 'Theme',
                  style: Theme
                      .of(context)
                      .textTheme
                      .labelMedium,
                ),
              ),
              Switch(
                trackOutlineColor: WidgetStatePropertyAll(
                    Theme
                        .of(context)
                        .colorScheme
                        .surface),
                inactiveTrackColor: Theme
                    .of(context)
                    .colorScheme
                    .surface,
                inactiveThumbColor: Theme
                    .of(context)
                    .primaryColor,
                value: SC.userThemeMode != ThemeMode.light,
                thumbColor:
                WidgetStatePropertyAll(Theme
                    .of(context)
                    .primaryColor),
                activeTrackColor: Theme
                    .of(context)
                    .colorScheme
                    .surface,
                onChanged: (value) {
                  context.read<SettingBloc>().add(ChangeTheme());
                  setState(() {});
                },
              )
            ],
          ),
        ),
        Divider(
          color: Colors.grey.withValues(alpha: 0.2),
          height: 1,
        ),
      ],
    );
  }
}
