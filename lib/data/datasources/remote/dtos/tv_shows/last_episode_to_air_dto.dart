import 'package:json_annotation/json_annotation.dart';

part 'last_episode_to_air_dto.g.dart';

@JsonSerializable()
class LastEpisodeToAirDto {
  int id;
  String? name;
  String? overview;
  @JsonKey(name: "vote_average")
  double? voteAverage;
  @JsonKey(name: "vote_count")
  int? voteCount;
  @JsonKey(name: "air_date")
  DateTime? airDate;
  @JsonKey(name: "episode_number")
  int? episodeNumber;
  @JsonKey(name: "production_code")
  String? productionCode;
  int? runtime;
  @JsonKey(name: "season_number")
  int? seasonNumber;
  @JsonKey(name: "show_id")
  int? showId;
  @JsonKey(name: "still_path")
  String? stillPath;

  LastEpisodeToAirDto({
    required this.id,
    this.name,
    this.overview,
    this.voteAverage,
    this.voteCount,
    this.airDate,
    this.episodeNumber,
    this.productionCode,
    this.runtime,
    this.seasonNumber,
    this.showId,
    this.stillPath,
  });

  factory LastEpisodeToAirDto.fromJson(Map<String, dynamic> json) =>
      _$LastEpisodeToAirDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LastEpisodeToAirDtoToJson(this);
}
