import 'package:json_annotation/json_annotation.dart';

part 'belongs_to_collection_dto.g.dart';

@JsonSerializable()
class BelongsToCollectionDto {
  int id;
  String? name;
  @JsonKey(name: "poster_path")
  String? posterPath;
  @JsonKey(name: "backdrop_path")
  String? backdropPath;

  BelongsToCollectionDto({
    required this.id,
    this.name,
    this.posterPath,
    this.backdropPath,
  });

  factory BelongsToCollectionDto.fromJson(Map<String, dynamic> json) =>
      _$BelongsToCollectionDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BelongsToCollectionDtoToJson(this);
}
