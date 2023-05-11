// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_trending_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvTrendingDto _$TvTrendingDtoFromJson(Map<String, dynamic> json) =>
    TvTrendingDto(
      adult: json['adult'] as bool,
      backdropPath: json['backdropPath'] as String,
      id: json['id'] as int,
      name: json['name'] as String,
      originalLanguage: json['originalLanguage'] as String,
      originalName: json['originalName'] as String,
      overview: json['overview'] as String,
      posterPath: json['posterPath'] as String,
      mediaType: json['mediaType'] as String,
      genreIds:
          (json['genreIds'] as List<dynamic>).map((e) => e as int).toList(),
      popularity: (json['popularity'] as num).toDouble(),
      firstAirDate: DateTime.parse(json['firstAirDate'] as String),
      voteAverage: (json['voteAverage'] as num).toDouble(),
      voteCount: json['voteCount'] as int,
      originCountry: (json['originCountry'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$TvTrendingDtoToJson(TvTrendingDto instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdropPath': instance.backdropPath,
      'id': instance.id,
      'name': instance.name,
      'originalLanguage': instance.originalLanguage,
      'originalName': instance.originalName,
      'overview': instance.overview,
      'posterPath': instance.posterPath,
      'mediaType': instance.mediaType,
      'genreIds': instance.genreIds,
      'popularity': instance.popularity,
      'firstAirDate': instance.firstAirDate.toIso8601String(),
      'voteAverage': instance.voteAverage,
      'voteCount': instance.voteCount,
      'originCountry': instance.originCountry,
    };
