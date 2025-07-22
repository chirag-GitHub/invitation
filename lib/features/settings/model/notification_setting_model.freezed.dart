// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_setting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationSettingModel _$NotificationSettingModelFromJson(
    Map<String, dynamic> json) {
  return _NotificationSettingModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationSettingModel {
  @JsonKey(name: "data")
  NotificationData get notificationData => throw _privateConstructorUsedError;

  /// Serializes this NotificationSettingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationSettingModelCopyWith<NotificationSettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationSettingModelCopyWith<$Res> {
  factory $NotificationSettingModelCopyWith(NotificationSettingModel value,
          $Res Function(NotificationSettingModel) then) =
      _$NotificationSettingModelCopyWithImpl<$Res, NotificationSettingModel>;
  @useResult
  $Res call({@JsonKey(name: "data") NotificationData notificationData});

  $NotificationDataCopyWith<$Res> get notificationData;
}

/// @nodoc
class _$NotificationSettingModelCopyWithImpl<$Res,
        $Val extends NotificationSettingModel>
    implements $NotificationSettingModelCopyWith<$Res> {
  _$NotificationSettingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationData = null,
  }) {
    return _then(_value.copyWith(
      notificationData: null == notificationData
          ? _value.notificationData
          : notificationData // ignore: cast_nullable_to_non_nullable
              as NotificationData,
    ) as $Val);
  }

  /// Create a copy of NotificationSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationDataCopyWith<$Res> get notificationData {
    return $NotificationDataCopyWith<$Res>(_value.notificationData, (value) {
      return _then(_value.copyWith(notificationData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationSettingModelImplCopyWith<$Res>
    implements $NotificationSettingModelCopyWith<$Res> {
  factory _$$NotificationSettingModelImplCopyWith(
          _$NotificationSettingModelImpl value,
          $Res Function(_$NotificationSettingModelImpl) then) =
      __$$NotificationSettingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") NotificationData notificationData});

  @override
  $NotificationDataCopyWith<$Res> get notificationData;
}

/// @nodoc
class __$$NotificationSettingModelImplCopyWithImpl<$Res>
    extends _$NotificationSettingModelCopyWithImpl<$Res,
        _$NotificationSettingModelImpl>
    implements _$$NotificationSettingModelImplCopyWith<$Res> {
  __$$NotificationSettingModelImplCopyWithImpl(
      _$NotificationSettingModelImpl _value,
      $Res Function(_$NotificationSettingModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationData = null,
  }) {
    return _then(_$NotificationSettingModelImpl(
      notificationData: null == notificationData
          ? _value.notificationData
          : notificationData // ignore: cast_nullable_to_non_nullable
              as NotificationData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationSettingModelImpl implements _NotificationSettingModel {
  const _$NotificationSettingModelImpl(
      {@JsonKey(name: "data")
      this.notificationData = const NotificationData()});

  factory _$NotificationSettingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationSettingModelImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final NotificationData notificationData;

  @override
  String toString() {
    return 'NotificationSettingModel(notificationData: $notificationData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationSettingModelImpl &&
            (identical(other.notificationData, notificationData) ||
                other.notificationData == notificationData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, notificationData);

  /// Create a copy of NotificationSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationSettingModelImplCopyWith<_$NotificationSettingModelImpl>
      get copyWith => __$$NotificationSettingModelImplCopyWithImpl<
          _$NotificationSettingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationSettingModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationSettingModel implements NotificationSettingModel {
  const factory _NotificationSettingModel(
          {@JsonKey(name: "data") final NotificationData notificationData}) =
      _$NotificationSettingModelImpl;

  factory _NotificationSettingModel.fromJson(Map<String, dynamic> json) =
      _$NotificationSettingModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  NotificationData get notificationData;

  /// Create a copy of NotificationSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationSettingModelImplCopyWith<_$NotificationSettingModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationData _$NotificationDataFromJson(Map<String, dynamic> json) {
  return _NotificationData.fromJson(json);
}

/// @nodoc
mixin _$NotificationData {
  @JsonKey(name: "is_notification")
  bool get isNotification => throw _privateConstructorUsedError;
  @JsonKey(name: "settings")
  List<List<NotificationSetting>> get notificationSettingList =>
      throw _privateConstructorUsedError;

  /// Serializes this NotificationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationDataCopyWith<NotificationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDataCopyWith<$Res> {
  factory $NotificationDataCopyWith(
          NotificationData value, $Res Function(NotificationData) then) =
      _$NotificationDataCopyWithImpl<$Res, NotificationData>;
  @useResult
  $Res call(
      {@JsonKey(name: "is_notification") bool isNotification,
      @JsonKey(name: "settings")
      List<List<NotificationSetting>> notificationSettingList});
}

/// @nodoc
class _$NotificationDataCopyWithImpl<$Res, $Val extends NotificationData>
    implements $NotificationDataCopyWith<$Res> {
  _$NotificationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isNotification = null,
    Object? notificationSettingList = null,
  }) {
    return _then(_value.copyWith(
      isNotification: null == isNotification
          ? _value.isNotification
          : isNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      notificationSettingList: null == notificationSettingList
          ? _value.notificationSettingList
          : notificationSettingList // ignore: cast_nullable_to_non_nullable
              as List<List<NotificationSetting>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationDataImplCopyWith<$Res>
    implements $NotificationDataCopyWith<$Res> {
  factory _$$NotificationDataImplCopyWith(_$NotificationDataImpl value,
          $Res Function(_$NotificationDataImpl) then) =
      __$$NotificationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "is_notification") bool isNotification,
      @JsonKey(name: "settings")
      List<List<NotificationSetting>> notificationSettingList});
}

/// @nodoc
class __$$NotificationDataImplCopyWithImpl<$Res>
    extends _$NotificationDataCopyWithImpl<$Res, _$NotificationDataImpl>
    implements _$$NotificationDataImplCopyWith<$Res> {
  __$$NotificationDataImplCopyWithImpl(_$NotificationDataImpl _value,
      $Res Function(_$NotificationDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isNotification = null,
    Object? notificationSettingList = null,
  }) {
    return _then(_$NotificationDataImpl(
      isNotification: null == isNotification
          ? _value.isNotification
          : isNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      notificationSettingList: null == notificationSettingList
          ? _value._notificationSettingList
          : notificationSettingList // ignore: cast_nullable_to_non_nullable
              as List<List<NotificationSetting>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationDataImpl implements _NotificationData {
  const _$NotificationDataImpl(
      {@JsonKey(name: "is_notification") this.isNotification = false,
      @JsonKey(name: "settings")
      final List<List<NotificationSetting>> notificationSettingList = const []})
      : _notificationSettingList = notificationSettingList;

  factory _$NotificationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationDataImplFromJson(json);

  @override
  @JsonKey(name: "is_notification")
  final bool isNotification;
  final List<List<NotificationSetting>> _notificationSettingList;
  @override
  @JsonKey(name: "settings")
  List<List<NotificationSetting>> get notificationSettingList {
    if (_notificationSettingList is EqualUnmodifiableListView)
      return _notificationSettingList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notificationSettingList);
  }

  @override
  String toString() {
    return 'NotificationData(isNotification: $isNotification, notificationSettingList: $notificationSettingList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationDataImpl &&
            (identical(other.isNotification, isNotification) ||
                other.isNotification == isNotification) &&
            const DeepCollectionEquality().equals(
                other._notificationSettingList, _notificationSettingList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isNotification,
      const DeepCollectionEquality().hash(_notificationSettingList));

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationDataImplCopyWith<_$NotificationDataImpl> get copyWith =>
      __$$NotificationDataImplCopyWithImpl<_$NotificationDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationDataImplToJson(
      this,
    );
  }
}

abstract class _NotificationData implements NotificationData {
  const factory _NotificationData(
          {@JsonKey(name: "is_notification") final bool isNotification,
          @JsonKey(name: "settings")
          final List<List<NotificationSetting>> notificationSettingList}) =
      _$NotificationDataImpl;

  factory _NotificationData.fromJson(Map<String, dynamic> json) =
      _$NotificationDataImpl.fromJson;

  @override
  @JsonKey(name: "is_notification")
  bool get isNotification;
  @override
  @JsonKey(name: "settings")
  List<List<NotificationSetting>> get notificationSettingList;

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationDataImplCopyWith<_$NotificationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationSetting _$NotificationSettingFromJson(Map<String, dynamic> json) {
  return _NotificationSetting.fromJson(json);
}

/// @nodoc
mixin _$NotificationSetting {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "section")
  String get section => throw _privateConstructorUsedError;
  @JsonKey(name: "is_enable")
  bool get isEnable => throw _privateConstructorUsedError;

  /// Serializes this NotificationSetting to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationSettingCopyWith<NotificationSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationSettingCopyWith<$Res> {
  factory $NotificationSettingCopyWith(
          NotificationSetting value, $Res Function(NotificationSetting) then) =
      _$NotificationSettingCopyWithImpl<$Res, NotificationSetting>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "section") String section,
      @JsonKey(name: "is_enable") bool isEnable});
}

/// @nodoc
class _$NotificationSettingCopyWithImpl<$Res, $Val extends NotificationSetting>
    implements $NotificationSettingCopyWith<$Res> {
  _$NotificationSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? section = null,
    Object? isEnable = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      section: null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String,
      isEnable: null == isEnable
          ? _value.isEnable
          : isEnable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationSettingImplCopyWith<$Res>
    implements $NotificationSettingCopyWith<$Res> {
  factory _$$NotificationSettingImplCopyWith(_$NotificationSettingImpl value,
          $Res Function(_$NotificationSettingImpl) then) =
      __$$NotificationSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "section") String section,
      @JsonKey(name: "is_enable") bool isEnable});
}

/// @nodoc
class __$$NotificationSettingImplCopyWithImpl<$Res>
    extends _$NotificationSettingCopyWithImpl<$Res, _$NotificationSettingImpl>
    implements _$$NotificationSettingImplCopyWith<$Res> {
  __$$NotificationSettingImplCopyWithImpl(_$NotificationSettingImpl _value,
      $Res Function(_$NotificationSettingImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? section = null,
    Object? isEnable = null,
  }) {
    return _then(_$NotificationSettingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      section: null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String,
      isEnable: null == isEnable
          ? _value.isEnable
          : isEnable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationSettingImpl implements _NotificationSetting {
  const _$NotificationSettingImpl(
      {@JsonKey(name: "id") this.id = 0,
      @JsonKey(name: "type") this.type = '',
      @JsonKey(name: "name") this.name = '',
      @JsonKey(name: "section") this.section = '',
      @JsonKey(name: "is_enable") this.isEnable = false});

  factory _$NotificationSettingImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationSettingImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "type")
  final String type;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "section")
  final String section;
  @override
  @JsonKey(name: "is_enable")
  final bool isEnable;

  @override
  String toString() {
    return 'NotificationSetting(id: $id, type: $type, name: $name, section: $section, isEnable: $isEnable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationSettingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.isEnable, isEnable) ||
                other.isEnable == isEnable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, name, section, isEnable);

  /// Create a copy of NotificationSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationSettingImplCopyWith<_$NotificationSettingImpl> get copyWith =>
      __$$NotificationSettingImplCopyWithImpl<_$NotificationSettingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationSettingImplToJson(
      this,
    );
  }
}

abstract class _NotificationSetting implements NotificationSetting {
  const factory _NotificationSetting(
          {@JsonKey(name: "id") final int id,
          @JsonKey(name: "type") final String type,
          @JsonKey(name: "name") final String name,
          @JsonKey(name: "section") final String section,
          @JsonKey(name: "is_enable") final bool isEnable}) =
      _$NotificationSettingImpl;

  factory _NotificationSetting.fromJson(Map<String, dynamic> json) =
      _$NotificationSettingImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "type")
  String get type;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "section")
  String get section;
  @override
  @JsonKey(name: "is_enable")
  bool get isEnable;

  /// Create a copy of NotificationSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationSettingImplCopyWith<_$NotificationSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
