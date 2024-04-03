import 'package:freezed_annotation/freezed_annotation.dart';

part 'to_person.freezed.dart';

part 'to_person.g.dart';

@freezed
class ToPerson with _$ToPerson {
  const factory ToPerson({
    required String toName,
    required String birthday,
    required int age,
  }) = _ToPerson;

  factory ToPerson.fromJson(Map<String, Object?> json) =>
      _$ToPersonFromJson(json);
}
