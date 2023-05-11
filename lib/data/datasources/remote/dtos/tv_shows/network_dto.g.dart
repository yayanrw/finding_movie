// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkDto _$NetworkDtoFromJson(Map<String, dynamic> json) => NetworkDto(
      id: json['id'] as int,
      logoPath: json['logoPath'] as String,
      name: json['name'] as String,
      originCountry: json['originCountry'] as String,
    );

Map<String, dynamic> _$NetworkDtoToJson(NetworkDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logoPath': instance.logoPath,
      'name': instance.name,
      'originCountry': instance.originCountry,
    };
