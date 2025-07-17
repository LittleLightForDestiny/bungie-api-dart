// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_graph_node_activity_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityGraphNodeActivityDefinition
_$DestinyActivityGraphNodeActivityDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyActivityGraphNodeActivityDefinition()
      ..nodeActivityId = (json['nodeActivityId'] as num?)?.toInt()
      ..activityHash = (json['activityHash'] as num?)?.toInt();

Map<String, dynamic> _$DestinyActivityGraphNodeActivityDefinitionToJson(
  DestinyActivityGraphNodeActivityDefinition instance,
) => <String, dynamic>{
  'nodeActivityId': instance.nodeActivityId,
  'activityHash': instance.activityHash,
};
