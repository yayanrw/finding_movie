import 'package:json_annotation/json_annotation.dart';

part 'tv_discover_dto.g.dart';

@JsonSerializable()
class TvDiscoverDto {
  bool? adult;
  @JsonKey(name: "backdrop_path")
  String backdropPath;
  @JsonKey(name: "first_air_date")
  DateTime firstAirDate;
  @JsonKey(name: "genre_ids")
  List<int> genreIds;
  int id;
  String name;
  @JsonKey(name: "origin_country")
  List<String> originCountry;
  @JsonKey(name: "original_language")
  String originalLanguage;
  @JsonKey(name: "original_name")
  String originalName;
  String overview;
  double popularity;
  @JsonKey(name: "poster_path")
  String posterPath;
  @JsonKey(name: "vote_average")
  double voteAverage;
  @JsonKey(name: "vote_count")
  int voteCount;

  TvDiscoverDto({
    this.adult,
    required this.backdropPath,
    required this.firstAirDate,
    required this.genreIds,
    required this.id,
    required this.name,
    required this.originCountry,
    required this.originalLanguage,
    required this.originalName,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.voteAverage,
    required this.voteCount,
  });

  factory TvDiscoverDto.fromJson(Map<String, dynamic> json) => _$TvDiscoverDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TvDiscoverDtoToJson(this);
}