import 'package:equatable/equatable.dart';
import 'package:finding_movie/data/datasources/remote/dtos/tv_shows/tv_trending_dto.dart';

class TvTrending extends Equatable {
  final String backdropPath;
  final int id;
  final String name;
  final String posterPath;
  final String firstAirDate;
  final double voteAverage;

  const TvTrending({
    required this.backdropPath,
    required this.id,
    required this.name,
    required this.posterPath,
    required this.firstAirDate,
    required this.voteAverage,
  });

  @override
  List<Object?> get props => [
        backdropPath,
        id,
        name,
        posterPath,
        firstAirDate,
        voteAverage,
      ];
}

extension TvTrendingDtoExtension on TvTrendingDto {
  TvTrending toEntity() {
    return TvTrending(
      backdropPath: backdropPath ?? "/5fKDsHMfY3K7vV1JFECYaafnwwx.jpg",
      id: id,
      name: name,
      posterPath: posterPath ?? "/5fKDsHMfY3K7vV1JFECYaafnwwx.jpg",
      firstAirDate: firstAirDate,
      voteAverage: voteAverage,
    );
  }
}
