import 'package:json_annotation/json_annotation.dart';

part 'genre_dto.g.dart';

@JsonSerializable()
class GenreDto {
  int id;
  String name;

  GenreDto({
    required this.id,
    required this.name,
  });

  factory GenreDto.fromJson(Map<String, dynamic> json) =>
      _$GenreDtoFromJson(json);

  Map<String, dynamic> toJson() => _$GenreDtoToJson(this);
}
