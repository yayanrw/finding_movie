// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeasonDto _$SeasonDtoFromJson(Map<String, dynamic> json) => SeasonDto(
      airDate: DateTime.parse(json['airDate'] as String),
      episodeCount: json['episodeCount'] as int,
      id: json['id'] as int,
      name: json['name'] as String,
      overview: json['overview'] as String,
      posterPath: json['posterPath'] as String,
      seasonNumber: json['seasonNumber'] as int,
    );

Map<String, dynamic> _$SeasonDtoToJson(SeasonDto instance) => <String, dynamic>{
      'airDate': instance.airDate.toIso8601String(),
      'episodeCount': instance.episodeCount,
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'posterPath': instance.posterPath,
      'seasonNumber': instance.seasonNumber,
    };
