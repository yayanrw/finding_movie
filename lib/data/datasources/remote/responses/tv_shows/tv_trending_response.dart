import 'package:finding_movie/data/datasources/remote/dtos/tv_shows/tv_trending_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tv_trending_response.g.dart';

@JsonSerializable()
class TvTrendingResponse {
  int page;
  List<TvTrendingDto> results;
  @JsonKey(name: "total_pages")
  int totalPages;
  @JsonKey(name: "total_results")
  int totalResults;

  TvTrendingResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory TvTrendingResponse.fromJson(Map<String, dynamic> json) =>
      _$TvTrendingResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TvTrendingResponseToJson(this);
}
