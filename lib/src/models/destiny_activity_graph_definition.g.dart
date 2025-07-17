// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_graph_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityGraphDefinition _$DestinyActivityGraphDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyActivityGraphDefinition()
      ..nodes =
          (json['nodes'] as List<dynamic>?)
              ?.map(
                (e) => DestinyActivityGraphNodeDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..artElements =
          (json['artElements'] as List<dynamic>?)
              ?.map(
                (e) => DestinyActivityGraphArtElementDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..connections =
          (json['connections'] as List<dynamic>?)
              ?.map(
                (e) => DestinyActivityGraphConnectionDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..displayObjectives =
          (json['displayObjectives'] as List<dynamic>?)
              ?.map(
                (e) => DestinyActivityGraphDisplayObjectiveDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..displayProgressions =
          (json['displayProgressions'] as List<dynamic>?)
              ?.map(
                (e) =>
                    DestinyActivityGraphDisplayProgressionDefinition.fromJson(
                      e as Map<String, dynamic>,
                    ),
              )
              .toList()
      ..linkedGraphs =
          (json['linkedGraphs'] as List<dynamic>?)
              ?.map(
                (e) => DestinyLinkedGraphDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyActivityGraphDefinitionToJson(
  DestinyActivityGraphDefinition instance,
) => <String, dynamic>{
  'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
  'artElements': instance.artElements?.map((e) => e.toJson()).toList(),
  'connections': instance.connections?.map((e) => e.toJson()).toList(),
  'displayObjectives':
      instance.displayObjectives?.map((e) => e.toJson()).toList(),
  'displayProgressions':
      instance.displayProgressions?.map((e) => e.toJson()).toList(),
  'linkedGraphs': instance.linkedGraphs?.map((e) => e.toJson()).toList(),
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
