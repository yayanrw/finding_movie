import 'package:finding_movie/data/datasources/remote/dtos/tv_shows/tv_discover_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tv_discover_response.g.dart';

@JsonSerializable()
class TvDiscoverResponse {
  int page;
  List<TvDiscoverDto> results;
  @JsonKey(name: "total_pages")
  int totalPages;
  @JsonKey(name: "total_results")
  int totalResults;

  TvDiscoverResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory TvDiscoverResponse.fromJson(Map<String, dynamic> json) => _$TvDiscoverResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TvDiscoverResponseToJson(this);
}
