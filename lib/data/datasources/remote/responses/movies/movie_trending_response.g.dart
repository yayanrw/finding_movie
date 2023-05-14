// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_trending_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieTrendingResponse _$MovieTrendingResponseFromJson(
        Map<String, dynamic> json) =>
    MovieTrendingResponse(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieTrendingDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$MovieTrendingResponseToJson(
        MovieTrendingResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
