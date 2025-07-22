import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotanic/features/settings/bloc/setting_bloc.dart';
import 'package:quotanic/features/settings/model/notification_setting_model.dart';

class NotificationSettingWidget extends StatelessWidget {
  const NotificationSettingWidget(
      this.notificationSettingList, this.settingBloc, this.isAllEnable,
      {super.key});

  final List<List<NotificationSetting>> notificationSettingList;
  final SettingBloc settingBloc;
  final bool isAllEnable;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingBloc, SettingStates>(
      bloc: settingBloc,
      builder: (context, state) {
        return Stack(
          children: [
            ListView.separated(
              separatorBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey.withValues(alpha: 0.2),
                      ),
                    ),
                  ),
                );
              },
              shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              itemCount: notificationSettingList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          spacing: 20,
                          children: [
                            Expanded(
                              child: Text(
                                notificationSettingList[index].first.section,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary),
                              ),
                            ),
                            // Icon(
                            //   Icons.arrow_drop_down,
                            //   // color: Theme.of(context).primaryColor,
                            // )
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Theme.of(context).colorScheme.surface),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: notificationSettingList[index].length,
                          itemBuilder: (context, index1) {
                            return Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.only(left: 20, right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      notificationSettingList[index][index1]
                                          .name,
                                      // 'Notification',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall,
                                    ),
                                  ),
                                  Switch(
                                    trackOutlineColor: WidgetStatePropertyAll(
                                        Theme.of(context).colorScheme.surface),
                                    inactiveTrackColor:
                                        Theme.of(context).colorScheme.surface,
                                    inactiveThumbColor:
                                        Theme.of(context).primaryColor,
                                    value: notificationSettingList[index]
                                            [index1]
                                        .isEnable,
                                    thumbColor:
                                        WidgetStatePropertyAll(Colors.white),
                                    activeTrackColor:
                                        Theme.of(context).colorScheme.primary,
                                    onChanged: (v) {
                                      context.read<SettingBloc>().add(
                                          ChangeNotification(
                                              id: notificationSettingList[index]
                                                      [index1]
                                                  .id
                                                  .toString(),
                                              isAll: '0',
                                              isEnable: v ? '1' : '0'));
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
            if (!isAllEnable)
              Container(
                color: Theme.of(context).colorScheme.surface.withAlpha(130),
              ),
          ],
        );
      },
    );
  }
}
