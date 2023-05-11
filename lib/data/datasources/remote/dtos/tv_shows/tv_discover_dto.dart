import 'package:json_annotation/json_annotation.dart';

part 'tv_discover_dto.g.dart';

@JsonSerializable()
class TvDiscoverDto {
  bool? adult;
  String backdropPath;
  DateTime firstAirDate;
  List<int> genreIds;
  int id;
  String name;
  List<String> originCountry;
  String originalLanguage;
  String originalName;
  String overview;
  double popularity;
  String posterPath;
  double voteAverage;
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