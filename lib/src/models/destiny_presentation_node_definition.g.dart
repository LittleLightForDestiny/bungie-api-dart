// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_presentation_node_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPresentationNodeDefinition _$DestinyPresentationNodeDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyPresentationNodeDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..originalIcon = json['originalIcon'] as String?
      ..rootViewIcon = json['rootViewIcon'] as String?
      ..nodeType = decodeDestinyPresentationNodeType(json['nodeType'])
      ..scope = decodeDestinyScope(json['scope'])
      ..objectiveHash = json['objectiveHash'] as int?
      ..completionRecordHash = json['completionRecordHash'] as int?
      ..children = json['children'] == null
          ? null
          : DestinyPresentationNodeChildrenBlock.fromJson(
              json['children'] as Map<String, dynamic>)
      ..displayStyle =
          decodeDestinyPresentationDisplayStyle(json['displayStyle'])
      ..screenStyle = decodeDestinyPresentationScreenStyle(json['screenStyle'])
      ..requirements = json['requirements'] == null
          ? null
          : DestinyPresentationNodeRequirementsBlock.fromJson(
              json['requirements'] as Map<String, dynamic>)
      ..disableChildSubscreenNavigation =
          json['disableChildSubscreenNavigation'] as bool?
      ..maxCategoryRecordScore = json['maxCategoryRecordScore'] as int?
      ..presentationNodeType =
          decodeDestinyPresentationNodeType(json['presentationNodeType'])
      ..traitIds =
          (json['traitIds'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..traitHashes =
          (json['traitHashes'] as List<dynamic>?)?.map((e) => e as int).toList()
      ..parentNodeHashes = (json['parentNodeHashes'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList()
      ..hash = json['hash'] as int?
      ..index = json['index'] as int?
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyPresentationNodeDefinitionToJson(
        DestinyPresentationNodeDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'originalIcon': instance.originalIcon,
      'rootViewIcon': instance.rootViewIcon,
      'nodeType': encodeDestinyPresentationNodeType(instance.nodeType),
      'scope': encodeDestinyScope(instance.scope),
      'objectiveHash': instance.objectiveHash,
      'completionRecordHash': instance.completionRecordHash,
      'children': instance.children,
      'displayStyle':
          encodeDestinyPresentationDisplayStyle(instance.displayStyle),
      'screenStyle': encodeDestinyPresentationScreenStyle(instance.screenStyle),
      'requirements': instance.requirements,
      'disableChildSubscreenNavigation':
          instance.disableChildSubscreenNavigation,
      'maxCategoryRecordScore': instance.maxCategoryRecordScore,
      'presentationNodeType':
          encodeDestinyPresentationNodeType(instance.presentationNodeType),
      'traitIds': instance.traitIds,
      'traitHashes': instance.traitHashes,
      'parentNodeHashes': instance.parentNodeHashes,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
