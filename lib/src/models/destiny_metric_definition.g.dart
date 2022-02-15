// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_metric_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMetricDefinition _$DestinyMetricDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyMetricDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..trackingObjectiveHash = json['trackingObjectiveHash'] as int?
      ..lowerValueIsBetter = json['lowerValueIsBetter'] as bool?
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

Map<String, dynamic> _$DestinyMetricDefinitionToJson(
        DestinyMetricDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'trackingObjectiveHash': instance.trackingObjectiveHash,
      'lowerValueIsBetter': instance.lowerValueIsBetter,
      'presentationNodeType':
          encodeDestinyPresentationNodeType(instance.presentationNodeType),
      'traitIds': instance.traitIds,
      'traitHashes': instance.traitHashes,
      'parentNodeHashes': instance.parentNodeHashes,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
