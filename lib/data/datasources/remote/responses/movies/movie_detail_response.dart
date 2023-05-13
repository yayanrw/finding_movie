
import 'package:finding_movie/data/datasources/remote/dtos/movies/belongs_to_collection_dto.dart';
import 'package:finding_movie/data/datasources/remote/dtos/movies/genre_dto.dart';
import 'package:finding_movie/data/datasources/remote/dtos/movies/production_company_dto.dart';
import 'package:finding_movie/data/datasources/remote/dtos/movies/production_country_dto.dart';
import 'package:finding_movie/data/datasources/remote/dtos/movies/spoken_language_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_detail_response.g.dart';

@JsonSerializable()
class MovieDetailResponse {
  bool adult;
  String backdropPath;
  BelongsToCollectionDto? belongsToCollection;
  int budget;
  List<GenreDto> genres;
  String homepage;
  int id;
  String imdbId;
  String originalLanguage;
  String originalTitle;
  String overview;
  double popularity;
  String posterPath;
  List<ProductionCompanyDto> productionCompanies;
  List<ProductionCountryDto> productionCountries;
  DateTime releaseDate;
  int revenue;
  int runtime;
  List<SpokenLanguageDto> spokenLanguages;
  String status;
  String tagline;
  String title;
  bool video;
  double voteAverage;
  int voteCount;

  MovieDetailResponse({
    required this.adult,
    required this.backdropPath,
    this.belongsToCollection,
    required this.budget,
    required this.genres,
    required this.homepage,
    required this.id,
    required this.imdbId,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.productionCompanies,
    required this.productionCountries,
    required this.releaseDate,
    required this.revenue,
    required this.runtime,
    required this.spokenLanguages,
    required this.status,
    required this.tagline,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory MovieDetailResponse.fromJson(Map<String, dynamic> json) => _$MovieDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailResponseToJson(this);
}