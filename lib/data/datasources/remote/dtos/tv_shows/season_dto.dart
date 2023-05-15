import 'package:json_annotation/json_annotation.dart';

part 'season_dto.g.dart';

@JsonSerializable()
class SeasonDto {
  @JsonKey(name: "air_date")
  DateTime ?airDate;
  @JsonKey(name: "episode_count")
  int? episodeCount;
  int? id;
  String? name;
  String? overview;
  @JsonKey(name: "poster_path")
  String? posterPath;
  @JsonKey(name: "season_number")
  int? seasonNumber;

  SeasonDto({
    required this.airDate,
    this.episodeCount,
    this.id,
    this.name,
    this.overview,
    this.posterPath,
    this.seasonNumber,
  });

  factory SeasonDto.fromJson(Map<String, dynamic> json) => _$SeasonDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SeasonDtoToJson(this);
}