
import 'package:quotanic/features/settings/model/notification_setting_model.dart';

abstract class SettingApiRepository {

  Future<NotificationSettingModel> getNotificationSettingApi();

  Future<NotificationSettingModel> changeNotificationSettingApi(data);

}
