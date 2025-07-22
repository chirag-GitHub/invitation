
import 'package:dio/dio.dart';
import 'package:quotanic/data/network/end_points.dart';
import 'package:quotanic/features/settings/model/notification_setting_model.dart';

import '../../../data/network/dio_api_services_impl.dart';
import 'setting_api_repository.dart';

/// Implementation of [SettingApiRepository] for making HTTP requests to the authentication API.
class SettingApiRepositoryImpl implements SettingApiRepository {
  final DioApiServicesImpl _apiServices = DioApiServicesImpl();

  @override
  Future<NotificationSettingModel> getNotificationSettingApi() async {
    Response response = await _apiServices.getApi(Endpoints.notificationSetting);
    return NotificationSettingModel.fromJson(response.data);
  }

  @override
  Future<NotificationSettingModel> changeNotificationSettingApi(dynamic data) async {
    Response response = await _apiServices.postApi(Endpoints.notificationSetting,data: data);
    return NotificationSettingModel.fromJson(response.data);
  }


}
