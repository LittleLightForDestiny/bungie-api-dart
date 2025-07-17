// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_scored_presentation_node_base_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyScoredPresentationNodeBaseDefinition
_$DestinyScoredPresentationNodeBaseDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyScoredPresentationNodeBaseDefinition()
      ..maxCategoryRecordScore =
          (json['maxCategoryRecordScore'] as num?)?.toInt()
      ..presentationNodeType = decodeDestinyPresentationNodeType(
        json['presentationNodeType'],
      )
      ..traitIds =
          (json['traitIds'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..traitHashes =
          (json['traitHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..parentNodeHashes =
          (json['parentNodeHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyScoredPresentationNodeBaseDefinitionToJson(
  DestinyScoredPresentationNodeBaseDefinition instance,
) => <String, dynamic>{
  'maxCategoryRecordScore': instance.maxCategoryRecordScore,
  'presentationNodeType': encodeDestinyPresentationNodeType(
    instance.presentationNodeType,
  ),
  'traitIds': instance.traitIds,
  'traitHashes': instance.traitHashes,
  'parentNodeHashes': instance.parentNodeHashes,
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
