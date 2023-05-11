
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
  String backdropPath;
  int id;
  String title;
  String originalLanguage;
  String originalTitle;
  String overview;
  String posterPath;
  String mediaType;
  List<int> genreIds;
  double popularity;
  String releaseDate;
  bool video;
  double voteAverage;
  int voteCount;

  factory MovieTrendingDto.fromJson(Map<String, dynamic> json) => _$MovieTrendingDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MovieTrendingDtoToJson(this);
}
