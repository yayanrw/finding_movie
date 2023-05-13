import 'package:equatable/equatable.dart';
import 'package:finding_movie/domain/entities/movies/genre.dart';

class MovieDetail extends Equatable {
  final String backdropPath;
  final List<Genre> genres;
  final int id;
  final String overview;
  final String posterPath;
  final DateTime releaseDate;
  final int runtime;
  final String title;
  final double voteAverage;

  const MovieDetail({
    required this.backdropPath,
    required this.genres,
    required this.id,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.runtime,
    required this.title,
    required this.voteAverage,
  });

  @override
  List<Object?> get props => [
        backdropPath,
        genres,
        id,
        overview,
        posterPath,
        releaseDate,
        runtime,
        title,
        voteAverage,
      ];
}
