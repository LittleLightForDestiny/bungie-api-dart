// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_talent_node_exclusive_set_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyTalentNodeExclusiveSetDefinition
_$DestinyTalentNodeExclusiveSetDefinitionFromJson(Map<String, dynamic> json) =>
    DestinyTalentNodeExclusiveSetDefinition()
      ..nodeIndexes =
          (json['nodeIndexes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList();

Map<String, dynamic> _$DestinyTalentNodeExclusiveSetDefinitionToJson(
  DestinyTalentNodeExclusiveSetDefinition instance,
) => <String, dynamic>{'nodeIndexes': instance.nodeIndexes};
