import '../dtos/movie_trending_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_trending_response.g.dart';

@JsonSerializable()
class MovieTrendingResponse {
  MovieTrendingResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });
  
  int page;
  List<MovieTrendingDto> results;
  int totalPages;
  int totalResults;

  factory MovieTrendingResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieTrendingResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieTrendingResponseToJson(this);
}
