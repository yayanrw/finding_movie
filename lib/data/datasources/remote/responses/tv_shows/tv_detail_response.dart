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
  String backdropPath;
  List<CreatedByDto> createdBy;
  List<dynamic> episodeRunTime;
  DateTime firstAirDate;
  List<GenreDto> genres;
  String homepage;
  int id;
  bool inProduction;
  List<String> languages;
  DateTime lastAirDate;
  LastEpisodeToAirDto lastEpisodeToAir;
  String name;
  dynamic nextEpisodeToAir;
  List<NetworkDto> networks;
  int numberOfEpisodes;
  int numberOfSeasons;
  List<String> originCountry;
  String originalLanguage;
  String originalName;
  String overview;
  double popularity;
  String posterPath;
  List<NetworkDto> productionCompanies;
  List<ProductionCountryDto> productionCountries;
  List<SeasonDto> seasons;
  List<SpokenLanguageDto> spokenLanguages;
  String status;
  String tagline;
  String type;
  double voteAverage;
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
