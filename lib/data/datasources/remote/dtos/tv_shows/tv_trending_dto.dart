import 'package:json_annotation/json_annotation.dart';

part 'tv_trending_dto.g.dart';

@JsonSerializable()
class TvTrendingDto {
  bool adult;
  @JsonKey(name: "backdrop_path")
  String? backdropPath;
  int id;
  String name;
  @JsonKey(name: "original_language")
  String originalLanguage;
  @JsonKey(name: "original_name")
  String originalName;
  String overview;
  @JsonKey(name: "poster_path")
  String? posterPath;
  @JsonKey(name: "media_type")
  String mediaType;
  @JsonKey(name: "genre_ids")
  List<int> genreIds;
  double popularity;
  @JsonKey(name: "first_air_date")
  DateTime firstAirDate;
  @JsonKey(name: "vote_average")
  double voteAverage;
  @JsonKey(name: "vote_count")
  int voteCount;
  @JsonKey(name: "origin_country")
  List<String> originCountry;

  TvTrendingDto({
    required this.adult,
    this.backdropPath,
    required this.id,
    required this.name,
    required this.originalLanguage,
    required this.originalName,
    required this.overview,
    this.posterPath,
    required this.mediaType,
    required this.genreIds,
    required this.popularity,
    required this.firstAirDate,
    required this.voteAverage,
    required this.voteCount,
    required this.originCountry,
  });

  factory TvTrendingDto.fromJson(Map<String, dynamic> json) =>
      _$TvTrendingDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TvTrendingDtoToJson(this);
}
