// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_talent_grid_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyTalentGridDefinition _$DestinyTalentGridDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyTalentGridDefinition()
      ..maxGridLevel = (json['maxGridLevel'] as num?)?.toInt()
      ..gridLevelPerColumn = (json['gridLevelPerColumn'] as num?)?.toInt()
      ..progressionHash = (json['progressionHash'] as num?)?.toInt()
      ..nodes = (json['nodes'] as List<dynamic>?)
          ?.map((e) =>
              DestinyTalentNodeDefinition.fromJson(e as Map<String, dynamic>))
          .toList()
      ..exclusiveSets = (json['exclusiveSets'] as List<dynamic>?)
          ?.map((e) => DestinyTalentNodeExclusiveSetDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..independentNodeIndexes =
          (json['independentNodeIndexes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..groups = (json['groups'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, DestinyTalentExclusiveGroup.fromJson(e as Map<String, dynamic>)),
      )
      ..nodeCategories = (json['nodeCategories'] as List<dynamic>?)
          ?.map((e) =>
              DestinyTalentNodeCategory.fromJson(e as Map<String, dynamic>))
          .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyTalentGridDefinitionToJson(
        DestinyTalentGridDefinition instance) =>
    <String, dynamic>{
      'maxGridLevel': instance.maxGridLevel,
      'gridLevelPerColumn': instance.gridLevelPerColumn,
      'progressionHash': instance.progressionHash,
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
      'exclusiveSets': instance.exclusiveSets?.map((e) => e.toJson()).toList(),
      'independentNodeIndexes': instance.independentNodeIndexes,
      'groups': instance.groups?.map((k, e) => MapEntry(k, e.toJson())),
      'nodeCategories':
          instance.nodeCategories?.map((e) => e.toJson()).toList(),
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
