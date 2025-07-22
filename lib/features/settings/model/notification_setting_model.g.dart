// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationSettingModelImpl _$$NotificationSettingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationSettingModelImpl(
      notificationData: json['data'] == null
          ? const NotificationData()
          : NotificationData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NotificationSettingModelImplToJson(
        _$NotificationSettingModelImpl instance) =>
    <String, dynamic>{
      'data': instance.notificationData,
    };

_$NotificationDataImpl _$$NotificationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationDataImpl(
      isNotification: json['is_notification'] as bool? ?? false,
      notificationSettingList: (json['settings'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) =>
                      NotificationSetting.fromJson(e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$NotificationDataImplToJson(
        _$NotificationDataImpl instance) =>
    <String, dynamic>{
      'is_notification': instance.isNotification,
      'settings': instance.notificationSettingList,
    };

_$NotificationSettingImpl _$$NotificationSettingImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationSettingImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      type: json['type'] as String? ?? '',
      name: json['name'] as String? ?? '',
      section: json['section'] as String? ?? '',
      isEnable: json['is_enable'] as bool? ?? false,
    );

Map<String, dynamic> _$$NotificationSettingImplToJson(
        _$NotificationSettingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'section': instance.section,
      'is_enable': instance.isEnable,
    };
