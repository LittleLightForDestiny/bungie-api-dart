// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_season_preview_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinySeasonPreviewDefinition _$DestinySeasonPreviewDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinySeasonPreviewDefinition()
      ..description = json['description'] as String?
      ..linkPath = json['linkPath'] as String?
      ..videoLink = json['videoLink'] as String?
      ..images = (json['images'] as List<dynamic>?)
          ?.map((e) => DestinySeasonPreviewImageDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DestinySeasonPreviewDefinitionToJson(
        DestinySeasonPreviewDefinition instance) =>
    <String, dynamic>{
      'description': instance.description,
      'linkPath': instance.linkPath,
      'videoLink': instance.videoLink,
      'images': instance.images?.map((e) => e.toJson()).toList(),
    };
