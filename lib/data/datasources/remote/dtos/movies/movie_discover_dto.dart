import 'package:json_annotation/json_annotation.dart';

part 'movie_discover_dto.g.dart';

@JsonSerializable()
class MovieDiscoverDto {
  bool adult;
  @JsonKey(name: "backdrop_path")
  String? backdropPath;
  @JsonKey(name: "genre_ids")
  List<int> genreIds;
  int id;
  @JsonKey(name: "original_language")
  String originalLanguage;
  @JsonKey(name: "original_title")
  String originalTitle;
  String overview;
  double popularity;
  @JsonKey(name: "poster_path")
  String? posterPath;
  @JsonKey(name: "release_date")
  String releaseDate;
  String title;
  bool video;
  @JsonKey(name: "vote_average")
  double voteAverage;
  @JsonKey(name: "vote_count")
  int voteCount;

  MovieDiscoverDto({
    required this.adult,
    this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory MovieDiscoverDto.fromJson(Map<String, dynamic> json) =>
      _$MovieDiscoverDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDiscoverDtoToJson(this);
}
