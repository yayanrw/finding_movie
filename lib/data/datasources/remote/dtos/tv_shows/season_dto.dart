import 'package:json_annotation/json_annotation.dart';

part 'season_dto.g.dart';

@JsonSerializable()
class SeasonDto {
  DateTime airDate;
  int episodeCount;
  int id;
  String name;
  String overview;
  String posterPath;
  int seasonNumber;

  SeasonDto({
    required this.airDate,
    required this.episodeCount,
    required this.id,
    required this.name,
    required this.overview,
    required this.posterPath,
    required this.seasonNumber,
  });

  factory SeasonDto.fromJson(Map<String, dynamic> json) => _$SeasonDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SeasonDtoToJson(this);
}