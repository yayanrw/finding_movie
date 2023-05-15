import 'package:json_annotation/json_annotation.dart';

part 'created_by_dto.g.dart';

@JsonSerializable()
class CreatedByDto {
  int id;
  @JsonKey(name: "credit_id")
  String creditId;
  String? name;
  int? gender;
  @JsonKey(name: "profile_path")
  String? profilePath;

  CreatedByDto({
    required this.id,
    required this.creditId,
    this.name,
    this.gender,
    this.profilePath,
  });

  factory CreatedByDto.fromJson(Map<String, dynamic> json) =>
      _$CreatedByDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CreatedByDtoToJson(this);
}
