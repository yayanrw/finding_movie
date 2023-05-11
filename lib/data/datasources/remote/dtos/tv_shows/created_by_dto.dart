import 'package:json_annotation/json_annotation.dart';

part 'created_by_dto.g.dart';

@JsonSerializable()
class CreatedByDto {
  int id;
  String creditId;
  String name;
  int gender;
  String profilePath;

  CreatedByDto({
    required this.id,
    required this.creditId,
    required this.name,
    required this.gender,
    required this.profilePath,
  });

  factory CreatedByDto.fromJson(Map<String, dynamic> json) =>
      _$CreatedByDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CreatedByDtoToJson(this);
}
