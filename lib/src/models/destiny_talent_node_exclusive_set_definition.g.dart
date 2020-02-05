// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_talent_node_exclusive_set_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyTalentNodeExclusiveSetDefinition
    _$DestinyTalentNodeExclusiveSetDefinitionFromJson(
        Map<String, dynamic> json) {
  return DestinyTalentNodeExclusiveSetDefinition()
    ..nodeIndexes =
        (json['nodeIndexes'] as List)?.map((e) => e as int)?.toList();
}

Map<String, dynamic> _$DestinyTalentNodeExclusiveSetDefinitionToJson(
        DestinyTalentNodeExclusiveSetDefinition instance) =>
    <String, dynamic>{
      'nodeIndexes': instance.nodeIndexes,
    };
