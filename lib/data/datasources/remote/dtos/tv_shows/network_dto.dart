import 'package:json_annotation/json_annotation.dart';

part 'network_dto.g.dart';

@JsonSerializable()
class NetworkDto {
  int id;
  String logoPath;
  String name;
  String originCountry;

  NetworkDto({
    required this.id,
    required this.logoPath,
    required this.name,
    required this.originCountry,
  });

  factory NetworkDto.fromJson(Map<String, dynamic> json) =>
      _$NetworkDtoFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkDtoToJson(this);
}
