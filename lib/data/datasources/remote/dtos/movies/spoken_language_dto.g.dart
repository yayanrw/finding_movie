// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spoken_language_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpokenLanguageDto _$SpokenLanguageDtoFromJson(Map<String, dynamic> json) =>
    SpokenLanguageDto(
      englishName: json['english_name'] as String,
      iso6391: json['iso6391'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$SpokenLanguageDtoToJson(SpokenLanguageDto instance) =>
    <String, dynamic>{
      'english_name': instance.englishName,
      'iso6391': instance.iso6391,
      'name': instance.name,
    };
