import 'package:finding_movie/data/datasources/remote/dtos/movies/genre_dto.dart';
import 'package:finding_movie/data/datasources/remote/dtos/movies/production_country_dto.dart';
import 'package:finding_movie/data/datasources/remote/dtos/movies/spoken_language_dto.dart';
import 'package:finding_movie/data/datasources/remote/dtos/tv_shows/created_by_dto.dart';
import 'package:finding_movie/data/datasources/remote/dtos/tv_shows/last_episode_to_air_dto.dart';
import 'package:finding_movie/data/datasources/remote/dtos/tv_shows/network_dto.dart';
import 'package:finding_movie/data/datasources/remote/dtos/tv_shows/season_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tv_detail_response.g.dart';

@JsonSerializable()
class TvDetailResponse {
  bool adult;
  @JsonKey(name: "backdrop_path")
  String backdropPath;
  @JsonKey(name: "created_by")
  List<CreatedByDto> createdBy;
  @JsonKey(name: "episode_run_time")
  List<dynamic> episodeRunTime;
  @JsonKey(name: "first_air_date")
  DateTime firstAirDate;
  List<GenreDto> genres;
  String homepage;
  int id;
  @JsonKey(name: "in_production")
  bool inProduction;
  List<String> languages;
  @JsonKey(name: "last_air_date")
  DateTime lastAirDate;
  @JsonKey(name: "last_episode_to_air")
  LastEpisodeToAirDto lastEpisodeToAir;
  String name;
  @JsonKey(name: "next_episode_to_air")
  dynamic nextEpisodeToAir;
  List<NetworkDto> networks;
  @JsonKey(name: "number_of_episodes")
  int numberOfEpisodes;
  @JsonKey(name: "number_of_seasons")
  int numberOfSeasons;
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
  @JsonKey(name: "production_companies")
  List<NetworkDto> productionCompanies;
  @JsonKey(name: "production_countries")
  List<ProductionCountryDto> productionCountries;
  List<SeasonDto> seasons;
  @JsonKey(name: "spoken_languages")
  List<SpokenLanguageDto> spokenLanguages;
  String status;
  String tagline;
  String type;
  @JsonKey(name: "vote_average")
  double voteAverage;
  @JsonKey(name: "vote_count")
  int voteCount;

  TvDetailResponse({
    required this.adult,
    required this.backdropPath,
    required this.createdBy,
    required this.episodeRunTime,
    required this.firstAirDate,
    required this.genres,
    required this.homepage,
    required this.id,
    required this.inProduction,
    required this.languages,
    required this.lastAirDate,
    required this.lastEpisodeToAir,
    required this.name,
    required this.nextEpisodeToAir,
    required this.networks,
    required this.numberOfEpisodes,
    required this.numberOfSeasons,
    required this.originCountry,
    required this.originalLanguage,
    required this.originalName,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.productionCompanies,
    required this.productionCountries,
    required this.seasons,
    required this.spokenLanguages,
    required this.status,
    required this.tagline,
    required this.type,
    required this.voteAverage,
    required this.voteCount,
  });

  factory TvDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$TvDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TvDetailResponseToJson(this);
}
