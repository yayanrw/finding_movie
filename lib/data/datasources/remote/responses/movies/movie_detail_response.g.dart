// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetailResponse _$MovieDetailResponseFromJson(Map<String, dynamic> json) =>
    MovieDetailResponse(
      adult: json['adult'] as bool,
      backdropPath: json['backdropPath'] as String,
      belongsToCollection: json['belongsToCollection'] == null
          ? null
          : BelongsToCollectionDto.fromJson(
              json['belongsToCollection'] as Map<String, dynamic>),
      budget: json['budget'] as int,
      genres: (json['genres'] as List<dynamic>)
          .map((e) => GenreDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      homepage: json['homepage'] as String,
      id: json['id'] as int,
      imdbId: json['imdbId'] as String,
      originalLanguage: json['originalLanguage'] as String,
      originalTitle: json['originalTitle'] as String,
      overview: json['overview'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      posterPath: json['posterPath'] as String,
      productionCompanies: (json['productionCompanies'] as List<dynamic>)
          .map((e) => ProductionCompanyDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      productionCountries: (json['productionCountries'] as List<dynamic>)
          .map((e) => ProductionCountryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      releaseDate: DateTime.parse(json['releaseDate'] as String),
      revenue: json['revenue'] as int,
      runtime: json['runtime'] as int,
      spokenLanguages: (json['spokenLanguages'] as List<dynamic>)
          .map((e) => SpokenLanguageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
      tagline: json['tagline'] as String,
      title: json['title'] as String,
      video: json['video'] as bool,
      voteAverage: (json['voteAverage'] as num).toDouble(),
      voteCount: json['voteCount'] as int,
    );

Map<String, dynamic> _$MovieDetailResponseToJson(
        MovieDetailResponse instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdropPath': instance.backdropPath,
      'belongsToCollection': instance.belongsToCollection,
      'budget': instance.budget,
      'genres': instance.genres,
      'homepage': instance.homepage,
      'id': instance.id,
      'imdbId': instance.imdbId,
      'originalLanguage': instance.originalLanguage,
      'originalTitle': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'posterPath': instance.posterPath,
      'productionCompanies': instance.productionCompanies,
      'productionCountries': instance.productionCountries,
      'releaseDate': instance.releaseDate.toIso8601String(),
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'spokenLanguages': instance.spokenLanguages,
      'status': instance.status,
      'tagline': instance.tagline,
      'title': instance.title,
      'video': instance.video,
      'voteAverage': instance.voteAverage,
      'voteCount': instance.voteCount,
    };
