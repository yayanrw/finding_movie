// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'belongs_to_collection_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BelongsToCollectionDto _$BelongsToCollectionDtoFromJson(
        Map<String, dynamic> json) =>
    BelongsToCollectionDto(
      id: json['id'] as int,
      name: json['name'] as String,
      posterPath: json['posterPath'] as String,
      backdropPath: json['backdropPath'] as String,
    );

Map<String, dynamic> _$BelongsToCollectionDtoToJson(
        BelongsToCollectionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'posterPath': instance.posterPath,
      'backdropPath': instance.backdropPath,
    };
