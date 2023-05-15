import 'package:equatable/equatable.dart';
import 'package:finding_movie/data/datasources/remote/dtos/tv_shows/tv_discover_dto.dart';

class TvDiscover extends Equatable {
  final String backdropPath;
  final DateTime firstAirDate;
  final int id;
  final String name;
  final String posterPath;
  final double voteAverage;

  const TvDiscover({
    required this.backdropPath,
    required this.firstAirDate,
    required this.id,
    required this.name,
    required this.posterPath,
    required this.voteAverage,
  });

  @override
  List<Object?> get props => [
        backdropPath,
        firstAirDate,
        id,
        name,
        posterPath,
        voteAverage,
      ];
}

extension TvDiscoverDtoExtension on TvDiscoverDto {
  TvDiscover toEntity() {
    return TvDiscover(
      backdropPath: backdropPath ?? "5fKDsHMfY3K7vV1JFECYaafnwwx.jpg",
      firstAirDate: firstAirDate,
      id: id,
      name: name,
      posterPath: posterPath ?? "5fKDsHMfY3K7vV1JFECYaafnwwx.jpg",
      voteAverage: voteAverage,
    );
  }
}
