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
  @JsonKey(name: "backdrop_path")
  String backdropPath;
  @JsonKey(name: "belongs_to_collection")
  BelongsToCollectionDto? belongsToCollection;
  int budget;
  List<GenreDto> genres;
  String homepage;
  int id;
  @JsonKey(name: "imdb_id")
  String imdbId;
  @JsonKey(name: "original_language")
  String originalLanguage;
  @JsonKey(name: "original_title")
  String originalTitle;
  String overview;
  double popularity;
  @JsonKey(name: "poster_path")
  String posterPath;
  @JsonKey(name: "production_companies")
  List<ProductionCompanyDto> productionCompanies;
  @JsonKey(name: "production_countries")
  List<ProductionCountryDto> productionCountries;
  @JsonKey(name: "release_date")
  DateTime releaseDate;
  int revenue;
  int runtime;
  @JsonKey(name: "spoken_languages")
  List<SpokenLanguageDto> spokenLanguages;
  String status;
  String tagline;
  String title;
  bool video;
  @JsonKey(name: "vote_average")
  double voteAverage;
  @JsonKey(name: "vote_count")
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

  factory MovieDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailResponseToJson(this);
}
