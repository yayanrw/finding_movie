import 'package:equatable/equatable.dart';

class MovieTrending extends Equatable {
  final String backdropPath;
  final int id;
  final String title;
  final String releaseDate;
  final double voteAverage;

  const MovieTrending(this.backdropPath, this.id, this.title, this.releaseDate,
      this.voteAverage);

  @override
  List<Object?> get props =>
      [backdropPath, id, title, releaseDate, voteAverage];
}
