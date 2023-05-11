// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_discover_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvDiscoverDto _$TvDiscoverDtoFromJson(Map<String, dynamic> json) =>
    TvDiscoverDto(
      adult: json['adult'] as bool?,
      backdropPath: json['backdropPath'] as String,
      firstAirDate: DateTime.parse(json['firstAirDate'] as String),
      genreIds:
          (json['genreIds'] as List<dynamic>).map((e) => e as int).toList(),
      id: json['id'] as int,
      name: json['name'] as String,
      originCountry: (json['originCountry'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      originalLanguage: json['originalLanguage'] as String,
      originalName: json['originalName'] as String,
      overview: json['overview'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      posterPath: json['posterPath'] as String,
      voteAverage: (json['voteAverage'] as num).toDouble(),
      voteCount: json['voteCount'] as int,
    );

Map<String, dynamic> _$TvDiscoverDtoToJson(TvDiscoverDto instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdropPath': instance.backdropPath,
      'firstAirDate': instance.firstAirDate.toIso8601String(),
      'genreIds': instance.genreIds,
      'id': instance.id,
      'name': instance.name,
      'originCountry': instance.originCountry,
      'originalLanguage': instance.originalLanguage,
      'originalName': instance.originalName,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'posterPath': instance.posterPath,
      'voteAverage': instance.voteAverage,
      'voteCount': instance.voteCount,
    };
