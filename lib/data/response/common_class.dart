import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_class.freezed.dart';
part 'common_class.g.dart';

@freezed
class Meta with _$Meta {
  const factory Meta({
    @JsonKey(name: "current_page") @Default(0) int currentPage,
    @Default(0) int from,
    @JsonKey(name: "last_page") @Default(0) int lastPage,
    @Default('') String path,
    @JsonKey(name: "per_page") @Default(0) int perPage,
    @Default(0) int to,
    @Default(0) int total,
    @Default(0) @JsonKey(name: 'total_unread') int totalUnread,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class Title with _$Title {
  const factory Title({
    @JsonKey(name: "en") @Default('') String titleEN,
    @Default(0) int from,
    @JsonKey(name: "de") @Default('') String titleDE,
  }) = _Title;

  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);
}


