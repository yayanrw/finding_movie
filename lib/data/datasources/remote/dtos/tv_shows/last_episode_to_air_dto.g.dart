// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_episode_to_air_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LastEpisodeToAirDto _$LastEpisodeToAirDtoFromJson(Map<String, dynamic> json) =>
    LastEpisodeToAirDto(
      id: json['id'] as int,
      name: json['name'] as String,
      overview: json['overview'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: json['vote_count'] as int,
      airDate: DateTime.parse(json['air_date'] as String),
      episodeNumber: json['episode_number'] as int,
      productionCode: json['production_code'] as String,
      runtime: json['runtime'] as int,
      seasonNumber: json['season_number'] as int,
      showId: json['show_id'] as int,
      stillPath: json['still_path'] as String,
    );

Map<String, dynamic> _$LastEpisodeToAirDtoToJson(
        LastEpisodeToAirDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'air_date': instance.airDate.toIso8601String(),
      'episode_number': instance.episodeNumber,
      'production_code': instance.productionCode,
      'runtime': instance.runtime,
      'season_number': instance.seasonNumber,
      'show_id': instance.showId,
      'still_path': instance.stillPath,
    };
