import 'package:equatable/equatable.dart';
import 'package:finding_movie/data/datasources/remote/dtos/tv_shows/tv_trending_dto.dart';

class TvTrending extends Equatable {
  final String backdropPath;
  final int id;
  final String name;
  final String posterPath;
  final DateTime firstAirDate;
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
      backdropPath: backdropPath,
      id: id,
      name: name,
      posterPath: posterPath,
      firstAirDate: firstAirDate,
      voteAverage: voteAverage,
    );
  }
}
