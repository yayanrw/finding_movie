import 'package:equatable/equatable.dart';
import 'package:finding_movie/data/datasources/remote/dtos/movies/movie_discover_dto.dart';

class MovieDiscover extends Equatable {
  final String backdropPath;
  final int id;
  final String posterPath;
  final String releaseDate;
  final String title;
  final double voteAverage;

  const MovieDiscover({
    required this.backdropPath,
    required this.id,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.voteAverage,
  });

  @override
  List<Object?> get props => [
        backdropPath,
        id,
        posterPath,
        releaseDate,
        title,
        voteAverage,
      ];
}

extension MovieDiscoverDtoExtension on MovieDiscoverDto {
  MovieDiscover toEntity() {
    return MovieDiscover(
      backdropPath: backdropPath ?? "/5fKDsHMfY3K7vV1JFECYaafnwwx.jpg",
      id: id,
      posterPath: posterPath ?? "/5fKDsHMfY3K7vV1JFECYaafnwwx.jpg",
      releaseDate: releaseDate,
      title: title,
      voteAverage: voteAverage,
    );
  }
}
