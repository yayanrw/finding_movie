// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_discover_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDiscoverResponse _$MovieDiscoverResponseFromJson(
        Map<String, dynamic> json) =>
    MovieDiscoverResponse(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieDiscoverDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int,
      totalResults: json['totalResults'] as int,
    );

Map<String, dynamic> _$MovieDiscoverResponseToJson(
        MovieDiscoverResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
    };
