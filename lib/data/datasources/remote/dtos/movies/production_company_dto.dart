import 'package:json_annotation/json_annotation.dart';

part 'production_company_dto.g.dart';

@JsonSerializable()
class ProductionCompanyDto {
  int id;
  @JsonKey(name: "logo_path")
  String? logoPath;
  String? name;
  @JsonKey(name: "origin_country")
  String? originCountry;

  ProductionCompanyDto({
    required this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  });

  factory ProductionCompanyDto.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompanyDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductionCompanyDtoToJson(this);
}
