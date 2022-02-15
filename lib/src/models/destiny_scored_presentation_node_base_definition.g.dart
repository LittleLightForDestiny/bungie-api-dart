// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_scored_presentation_node_base_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyScoredPresentationNodeBaseDefinition
    _$DestinyScoredPresentationNodeBaseDefinitionFromJson(
            Map<String, dynamic> json) =>
        DestinyScoredPresentationNodeBaseDefinition()
          ..maxCategoryRecordScore = json['maxCategoryRecordScore'] as int?
          ..presentationNodeType =
              decodeDestinyPresentationNodeType(json['presentationNodeType'])
          ..traitIds = (json['traitIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList()
          ..traitHashes = (json['traitHashes'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList()
          ..parentNodeHashes = (json['parentNodeHashes'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList()
          ..hash = json['hash'] as int?
          ..index = json['index'] as int?
          ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyScoredPresentationNodeBaseDefinitionToJson(
        DestinyScoredPresentationNodeBaseDefinition instance) =>
    <String, dynamic>{
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
