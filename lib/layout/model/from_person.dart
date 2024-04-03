import 'package:freezed_annotation/freezed_annotation.dart';

part 'from_person.freezed.dart';

part 'from_person.g.dart';

@freezed
class FromPerson with _$FromPerson {
  const factory FromPerson({
    required String fromName,
  }) = _FromPerson;

  factory FromPerson.fromJson(Map<String, Object?> json) => _$FromPersonFromJson(json);
}