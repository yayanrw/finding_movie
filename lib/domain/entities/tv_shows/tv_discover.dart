import 'package:equatable/equatable.dart';

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
