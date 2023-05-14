
import 'package:json_annotation/json_annotation.dart';

part 'movie_trending_dto.g.dart';

@JsonSerializable()
class MovieTrendingDto {
  MovieTrendingDto({
    required this.adult,
    required this.backdropPath,
    required this.id,
    required this.title,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.posterPath,
    required this.mediaType,
    required this.genreIds,
    required this.popularity,
    required this.releaseDate,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  bool adult;
  @JsonKey(name: "backdrop_path")
  String backdropPath;
  int id;
  String title;
  @JsonKey(name: "original_language")
  String originalLanguage;
  @JsonKey(name: "original_title")
  String originalTitle;
  String overview;
  @JsonKey(name: "poster_path")
  String posterPath;
  @JsonKey(name: "media_type")
  String mediaType;
  @JsonKey(name: "genre_ids")
  List<int> genreIds;
  double popularity;
  @JsonKey(name: "release_date")
  String releaseDate;
  bool video;
  @JsonKey(name: "vote_average")
  double voteAverage;
  @JsonKey(name: "vote_count")
  int voteCount;

  factory MovieTrendingDto.fromJson(Map<String, dynamic> json) => _$MovieTrendingDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MovieTrendingDtoToJson(this);
}
