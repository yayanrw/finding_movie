// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_trending_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvTrendingResponse _$TvTrendingResponseFromJson(Map<String, dynamic> json) =>
    TvTrendingResponse(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => TvTrendingDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$TvTrendingResponseToJson(TvTrendingResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
