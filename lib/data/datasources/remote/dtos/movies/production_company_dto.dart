import 'package:json_annotation/json_annotation.dart';

part 'production_company_dto.g.dart';

@JsonSerializable()
class ProductionCompanyDto {
  int id;
  String logoPath;
  String name;
  String originCountry;

  ProductionCompanyDto({
    required this.id,
    required this.logoPath,
    required this.name,
    required this.originCountry,
  });

  factory ProductionCompanyDto.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompanyDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductionCompanyDtoToJson(this);
}
