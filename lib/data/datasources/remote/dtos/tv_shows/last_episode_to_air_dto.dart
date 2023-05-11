import 'package:json_annotation/json_annotation.dart';

part 'last_episode_to_air_dto.g.dart';

@JsonSerializable()
class LastEpisodeToAirDto {
  int id;
  String name;
  String overview;
  double voteAverage;
  int voteCount;
  DateTime airDate;
  int episodeNumber;
  String productionCode;
  int runtime;
  int seasonNumber;
  int showId;
  String stillPath;

  LastEpisodeToAirDto({
    required this.id,
    required this.name,
    required this.overview,
    required this.voteAverage,
    required this.voteCount,
    required this.airDate,
    required this.episodeNumber,
    required this.productionCode,
    required this.runtime,
    required this.seasonNumber,
    required this.showId,
    required this.stillPath,
  });

  factory LastEpisodeToAirDto.fromJson(Map<String, dynamic> json) =>
      _$LastEpisodeToAirDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LastEpisodeToAirDtoToJson(this);
}
