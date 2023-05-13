import 'package:equatable/equatable.dart';

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
