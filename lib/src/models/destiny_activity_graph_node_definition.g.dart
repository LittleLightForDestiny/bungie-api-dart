// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_graph_node_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityGraphNodeDefinition _$DestinyActivityGraphNodeDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyActivityGraphNodeDefinition()
      ..nodeId = (json['nodeId'] as num?)?.toInt()
      ..overrideDisplay = json['overrideDisplay'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['overrideDisplay'] as Map<String, dynamic>)
      ..position = json['position'] == null
          ? null
          : DestinyPositionDefinition.fromJson(
              json['position'] as Map<String, dynamic>)
      ..featuringStates = (json['featuringStates'] as List<dynamic>?)
          ?.map((e) =>
              DestinyActivityGraphNodeFeaturingStateDefinition.fromJson(
                  e as Map<String, dynamic>))
          .toList()
      ..activities = (json['activities'] as List<dynamic>?)
          ?.map((e) => DestinyActivityGraphNodeActivityDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..states = (json['states'] as List<dynamic>?)
          ?.map((e) => DestinyActivityGraphNodeStateEntry.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DestinyActivityGraphNodeDefinitionToJson(
        DestinyActivityGraphNodeDefinition instance) =>
    <String, dynamic>{
      'nodeId': instance.nodeId,
      'overrideDisplay': instance.overrideDisplay?.toJson(),
      'position': instance.position?.toJson(),
      'featuringStates':
          instance.featuringStates?.map((e) => e.toJson()).toList(),
      'activities': instance.activities?.map((e) => e.toJson()).toList(),
      'states': instance.states?.map((e) => e.toJson()).toList(),
    };
