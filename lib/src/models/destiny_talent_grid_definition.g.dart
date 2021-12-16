// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_talent_grid_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyTalentGridDefinition _$DestinyTalentGridDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyTalentGridDefinition()
    ..maxGridLevel = json['maxGridLevel'] as int?
    ..gridLevelPerColumn = json['gridLevelPerColumn'] as int?
    ..progressionHash = json['progressionHash'] as int?
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
            ?.map((e) => e as int)
            .toList()
    ..groups = (json['groups'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          k, DestinyTalentExclusiveGroup.fromJson(e as Map<String, dynamic>)),
    )
    ..nodeCategories = (json['nodeCategories'] as List<dynamic>?)
        ?.map((e) =>
            DestinyTalentNodeCategory.fromJson(e as Map<String, dynamic>))
        .toList()
    ..hash = json['hash'] as int?
    ..index = json['index'] as int?
    ..redacted = json['redacted'] as bool?;
}

Map<String, dynamic> _$DestinyTalentGridDefinitionToJson(
        DestinyTalentGridDefinition instance) =>
    <String, dynamic>{
      'maxGridLevel': instance.maxGridLevel,
      'gridLevelPerColumn': instance.gridLevelPerColumn,
      'progressionHash': instance.progressionHash,
      'nodes': instance.nodes,
      'exclusiveSets': instance.exclusiveSets,
      'independentNodeIndexes': instance.independentNodeIndexes,
      'groups': instance.groups,
      'nodeCategories': instance.nodeCategories,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
