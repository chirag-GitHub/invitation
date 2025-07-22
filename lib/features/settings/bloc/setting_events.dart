part of 'setting_bloc.dart';

abstract class SettingEvents extends Equatable {
  @override
  List<Object> get props => [];
}

class SetInitialTheme extends SettingEvents {}

class ChangeTheme extends SettingEvents {}

class SetInitialLange extends SettingEvents {}

class ChangeLang extends SettingEvents {
  ChangeLang({required this.lang});

  final String lang;

  @override
  List<Object> get props => [lang];
}

class FetchNotificationSetting extends SettingEvents {}

class ChangeNotification extends SettingEvents {
  ChangeNotification({
    required this.isAll,
    required this.id,
    required this.isEnable,

  });

  final String isAll;
  final String id;
  final String isEnable;

  @override
  List<Object> get props => [isAll, id, isEnable,];
}
