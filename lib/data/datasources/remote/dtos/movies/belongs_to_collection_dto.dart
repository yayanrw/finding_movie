import 'package:json_annotation/json_annotation.dart';

part 'belongs_to_collection_dto.g.dart';

@JsonSerializable()
class BelongsToCollectionDto {
  int id;
  String name;
  String posterPath;
  String backdropPath;

  BelongsToCollectionDto({
    required this.id,
    required this.name,
    required this.posterPath,
    required this.backdropPath,
  });

  factory BelongsToCollectionDto.fromJson(Map<String, dynamic> json) =>
      _$BelongsToCollectionDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BelongsToCollectionDtoToJson(this);
}
