// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_presentation_node_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPresentationNodeDefinition _$DestinyPresentationNodeDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyPresentationNodeDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..originalIcon = json['originalIcon'] as String
    ..rootViewIcon = json['rootViewIcon'] as String
    ..nodeType = json['nodeType'] as int
    ..scope = json['scope'] as int
    ..objectiveHash = json['objectiveHash'] as int
    ..completionRecordHash = json['completionRecordHash'] as int
    ..children = json['children'] == null
        ? null
        : DestinyPresentationNodeChildrenBlock.fromJson(
            json['children'] as Map<String, dynamic>)
    ..displayStyle = json['displayStyle'] as int
    ..screenStyle = json['screenStyle'] as int
    ..requirements = json['requirements'] == null
        ? null
        : DestinyPresentationNodeRequirementsBlock.fromJson(
            json['requirements'] as Map<String, dynamic>)
    ..disableChildSubscreenNavigation =
        json['disableChildSubscreenNavigation'] as bool
    ..parentNodeHashes =
        (json['parentNodeHashes'] as List)?.map((e) => e as int)?.toList()
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinyPresentationNodeDefinitionToJson(
        DestinyPresentationNodeDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'originalIcon': instance.originalIcon,
      'rootViewIcon': instance.rootViewIcon,
      'nodeType': instance.nodeType,
      'scope': instance.scope,
      'objectiveHash': instance.objectiveHash,
      'completionRecordHash': instance.completionRecordHash,
      'children': instance.children,
      'displayStyle': instance.displayStyle,
      'screenStyle': instance.screenStyle,
      'requirements': instance.requirements,
      'disableChildSubscreenNavigation':
          instance.disableChildSubscreenNavigation,
      'parentNodeHashes': instance.parentNodeHashes,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted
    };
