// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_company_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductionCompanyDto _$ProductionCompanyDtoFromJson(
        Map<String, dynamic> json) =>
    ProductionCompanyDto(
      id: json['id'] as int,
      logoPath: json['logoPath'] as String,
      name: json['name'] as String,
      originCountry: json['originCountry'] as String,
    );

Map<String, dynamic> _$ProductionCompanyDtoToJson(
        ProductionCompanyDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logoPath': instance.logoPath,
      'name': instance.name,
      'originCountry': instance.originCountry,
    };
