import 'package:equatable/equatable.dart';
import 'package:finding_movie/data/datasources/remote/dtos/movies/movie_trending_dto.dart';

class MovieTrending extends Equatable {
  final String backdropPath;
  final int id;
  final String title;
  final String releaseDate;
  final double voteAverage;

  const MovieTrending({
    required this.backdropPath,
    required this.id,
    required this.title,
    required this.releaseDate,
    required this.voteAverage,
  });

  @override
  List<Object?> get props =>
      [backdropPath, id, title, releaseDate, voteAverage];
}

extension MovieTrendingDtoExtension on MovieTrendingDto {
  MovieTrending toEntity() {
    return MovieTrending(
      backdropPath: backdropPath ?? "5fKDsHMfY3K7vV1JFECYaafnwwx.jpg",
      id: id,
      title: title,
      releaseDate: releaseDate,
      voteAverage: voteAverage,
    );
  }
}
