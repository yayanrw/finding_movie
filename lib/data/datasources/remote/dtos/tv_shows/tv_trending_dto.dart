import 'package:json_annotation/json_annotation.dart';

part 'tv_trending_dto.g.dart';

@JsonSerializable()
class TvTrendingDto {
  bool adult;
  String backdropPath;
  int id;
  String name;
  String originalLanguage;
  String originalName;
  String overview;
  String posterPath;
  String mediaType;
  List<int> genreIds;
  double popularity;
  DateTime firstAirDate;
  double voteAverage;
  int voteCount;
  List<String> originCountry;

  TvTrendingDto({
    required this.adult,
    required this.backdropPath,
    required this.id,
    required this.name,
    required this.originalLanguage,
    required this.originalName,
    required this.overview,
    required this.posterPath,
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
