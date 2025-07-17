// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_graph_art_element_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityGraphArtElementDefinition
_$DestinyActivityGraphArtElementDefinitionFromJson(Map<String, dynamic> json) =>
    DestinyActivityGraphArtElementDefinition()
      ..position =
          json['position'] == null
              ? null
              : DestinyPositionDefinition.fromJson(
                json['position'] as Map<String, dynamic>,
              );

Map<String, dynamic> _$DestinyActivityGraphArtElementDefinitionToJson(
  DestinyActivityGraphArtElementDefinition instance,
) => <String, dynamic>{'position': instance.position?.toJson()};
