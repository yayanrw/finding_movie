// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_country_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductionCountryDto _$ProductionCountryDtoFromJson(
        Map<String, dynamic> json) =>
    ProductionCountryDto(
      iso31661: json['iso_3166_1'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ProductionCountryDtoToJson(
        ProductionCountryDto instance) =>
    <String, dynamic>{
      'iso_3166_1': instance.iso31661,
      'name': instance.name,
    };
