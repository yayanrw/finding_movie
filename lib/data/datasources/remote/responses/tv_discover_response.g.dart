// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_discover_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvDiscoverResponse _$TvDiscoverResponseFromJson(Map<String, dynamic> json) =>
    TvDiscoverResponse(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => TvDiscoverDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int,
      totalResults: json['totalResults'] as int,
    );

Map<String, dynamic> _$TvDiscoverResponseToJson(TvDiscoverResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
    };
