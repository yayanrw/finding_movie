// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkDto _$NetworkDtoFromJson(Map<String, dynamic> json) => NetworkDto(
      id: json['id'] as int,
      logoPath: json['logo_path'] as String?,
      name: json['name'] as String?,
      originCountry: json['origin_country'] as String?,
    );

Map<String, dynamic> _$NetworkDtoToJson(NetworkDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo_path': instance.logoPath,
      'name': instance.name,
      'origin_country': instance.originCountry,
    };
