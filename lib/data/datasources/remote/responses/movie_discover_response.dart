import 'package:finding_movie/data/datasources/remote/dtos/movie_discover_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_discover_response.g.dart';

@JsonSerializable()
class MovieDiscoverResponse {
  int page;
  List<MovieDiscoverDto> results;
  int totalPages;
  int totalResults;

  MovieDiscoverResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory MovieDiscoverResponse.fromJson(Map<String, dynamic> json) => _$MovieDiscoverResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDiscoverResponseToJson(this);
}