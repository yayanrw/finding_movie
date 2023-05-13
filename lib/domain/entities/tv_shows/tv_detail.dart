import 'package:equatable/equatable.dart';
import 'package:finding_movie/data/datasources/remote/responses/tv_shows/tv_detail_response.dart';
import 'package:finding_movie/domain/entities/movies/genre.dart';

class TvDetail extends Equatable {
  final String backdropPath;
  final DateTime firstAirDate;
  final List<Genre> genres;
  final int id;
  final String name;
  final String overview;
  final String posterPath;
  final double voteAverage;

  const TvDetail({
    required this.backdropPath,
    required this.firstAirDate,
    required this.genres,
    required this.id,
    required this.name,
    required this.overview,
    required this.posterPath,
    required this.voteAverage,
  });

  @override
  List<Object?> get props => [
        backdropPath,
        firstAirDate,
        genres,
        id,
        name,
        overview,
        posterPath,
        voteAverage,
      ];
}

extension TvDetailResponseExtention on TvDetailResponse {
  TvDetail toEntity() {
    return TvDetail(
      backdropPath: backdropPath,
      firstAirDate: firstAirDate,
      genres: genres.map((genreDto) => genreDto.toEntity()).toList(),
      id: id,
      name: name,
      overview: overview,
      posterPath: posterPath,
      voteAverage: voteAverage,
    );
  }
}
