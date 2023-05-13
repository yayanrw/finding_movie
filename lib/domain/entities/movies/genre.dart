import 'package:equatable/equatable.dart';
import 'package:finding_movie/data/datasources/remote/dtos/movies/genre_dto.dart';

class Genre extends Equatable {
  final String name;

  const Genre({required this.name});

  @override
  List<Object?> get props => [name];
}

extension GenreDtoExtension on GenreDto {
  Genre toEntity() {
    return Genre(name: name);
  }
}
