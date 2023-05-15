import 'package:json_annotation/json_annotation.dart';

part 'network_dto.g.dart';

@JsonSerializable()
class NetworkDto {
  int id;
  @JsonKey(name: "logo_path")
  String? logoPath;
  String? name;
  @JsonKey(name: "origin_country")
  String? originCountry;

  NetworkDto({
    required this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  });

  factory NetworkDto.fromJson(Map<String, dynamic> json) =>
      _$NetworkDtoFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkDtoToJson(this);
}
