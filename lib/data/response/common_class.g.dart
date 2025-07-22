// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
      currentPage: (json['current_page'] as num?)?.toInt() ?? 0,
      from: (json['from'] as num?)?.toInt() ?? 0,
      lastPage: (json['last_page'] as num?)?.toInt() ?? 0,
      path: json['path'] as String? ?? '',
      perPage: (json['per_page'] as num?)?.toInt() ?? 0,
      to: (json['to'] as num?)?.toInt() ?? 0,
      total: (json['total'] as num?)?.toInt() ?? 0,
      totalUnread: (json['total_unread'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'from': instance.from,
      'last_page': instance.lastPage,
      'path': instance.path,
      'per_page': instance.perPage,
      'to': instance.to,
      'total': instance.total,
      'total_unread': instance.totalUnread,
    };

_$TitleImpl _$$TitleImplFromJson(Map<String, dynamic> json) => _$TitleImpl(
      titleEN: json['en'] as String? ?? '',
      from: (json['from'] as num?)?.toInt() ?? 0,
      titleDE: json['de'] as String? ?? '',
    );

Map<String, dynamic> _$$TitleImplToJson(_$TitleImpl instance) =>
    <String, dynamic>{
      'en': instance.titleEN,
      'from': instance.from,
      'de': instance.titleDE,
    };
