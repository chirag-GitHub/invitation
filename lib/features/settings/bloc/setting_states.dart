part of 'setting_bloc.dart';

class SettingStates extends Equatable {
  const SettingStates(
      {required this.themeMode,
      required this.langCode,
      required this.notification,
      required this.notificationModel});

  final ThemeMode themeMode;
  final String langCode;
  final bool notification;
  final ApiResponse<NotificationSettingModel> notificationModel;

  SettingStates copyWith(
          {ThemeMode? themeMode,
          String? langCode,
          bool? notification,
          ApiResponse<NotificationSettingModel>? notificationModel}) =>
      SettingStates(
        themeMode: themeMode ?? this.themeMode,
        langCode: langCode ?? this.langCode,
        notification: notification ?? this.notification,
        notificationModel: notificationModel ?? this.notificationModel,
      );

  @override
  List<Object?> get props =>
      [themeMode, langCode, notification, notificationModel];
}
