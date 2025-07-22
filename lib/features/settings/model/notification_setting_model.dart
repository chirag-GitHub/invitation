import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'notification_setting_model.freezed.dart';

part 'notification_setting_model.g.dart';

NotificationSettingModel notificationSettingModelFromJson(String str) =>
    NotificationSettingModel.fromJson(json.decode(str));

String notificationSettingModelToJson(NotificationSettingModel data) =>
    json.encode(data.toJson());

@freezed
class NotificationSettingModel with _$NotificationSettingModel {
  const factory NotificationSettingModel({
    @JsonKey(name: "data")
    @Default(NotificationData())
    NotificationData notificationData,
  }) = _NotificationSettingModel;

  factory NotificationSettingModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationSettingModelFromJson(json);
}

@freezed
class NotificationData with _$NotificationData {
  const factory NotificationData({
    @JsonKey(name: "is_notification") @Default(false) bool isNotification,
    @JsonKey(name: "settings")
    @Default([])
    List<List<NotificationSetting>> notificationSettingList,
  }) = _NotificationData;

  factory NotificationData.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataFromJson(json);
}

@freezed
class NotificationSetting with _$NotificationSetting {
  const factory NotificationSetting({
    @Default(0) @JsonKey(name: "id") int id,
    @Default('') @JsonKey(name: "type") String type,
    @Default('') @JsonKey(name: "name") String name,
    @Default('') @JsonKey(name: "section") String section,
    @Default(false) @JsonKey(name: "is_enable") bool isEnable,
  }) = _NotificationSetting;

  factory NotificationSetting.fromJson(Map<String, dynamic> json) =>
      _$NotificationSettingFromJson(json);
}

/*
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_setting_model.freezed.dart'; // Importing generated code for Freezed class
part 'notification_setting_model.g.dart'; // Importing generated code for JSON serialization

/// Freezed class representing a user model.
@freezed
class NotificationSettingModel with _$NotificationSettingModel {
  /// Factory constructor for creating a [NotificationSettingModel] instance.
  const factory NotificationSettingModel({
    @Default([])
    @JsonKey(name: "data")
    List<List<NotificationData>> notificationSettingList,
  }) = _NotificationSettingModel; // Constructor for the freezed class

  /// Factory constructor for creating a [WidgetModel] instance from JSON.
  factory NotificationSettingModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationSettingModelFromJson(json); // JSON deserialization method
}

@freezed
class NotificationData with _$NotificationData {
  const factory NotificationData({
    @Default(0) @JsonKey(name: "id") int id,
    @Default('') @JsonKey(name: "type") String type,
    @Default('') @JsonKey(name: "name") String name,
    @Default('') @JsonKey(name: "section") String section,
    @Default(false) @JsonKey(name: "is_enable") bool isEnable,
  }) = _NotificationData;

  factory NotificationData.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataFromJson(json);
}
*/
