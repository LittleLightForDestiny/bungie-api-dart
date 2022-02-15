// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_record_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyRecordDefinition _$DestinyRecordDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyRecordDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..scope = decodeDestinyScope(json['scope'])
      ..presentationInfo = json['presentationInfo'] == null
          ? null
          : DestinyPresentationChildBlock.fromJson(
              json['presentationInfo'] as Map<String, dynamic>)
      ..loreHash = json['loreHash'] as int?
      ..objectiveHashes = (json['objectiveHashes'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList()
      ..recordValueStyle =
          decodeDestinyRecordValueStyle(json['recordValueStyle'])
      ..forTitleGilding = json['forTitleGilding'] as bool?
      ..titleInfo = json['titleInfo'] == null
          ? null
          : DestinyRecordTitleBlock.fromJson(
              json['titleInfo'] as Map<String, dynamic>)
      ..completionInfo = json['completionInfo'] == null
          ? null
          : DestinyRecordCompletionBlock.fromJson(
              json['completionInfo'] as Map<String, dynamic>)
      ..stateInfo = json['stateInfo'] == null
          ? null
          : SchemaRecordStateBlock.fromJson(
              json['stateInfo'] as Map<String, dynamic>)
      ..requirements = json['requirements'] == null
          ? null
          : DestinyPresentationNodeRequirementsBlock.fromJson(
              json['requirements'] as Map<String, dynamic>)
      ..expirationInfo = json['expirationInfo'] == null
          ? null
          : DestinyRecordExpirationBlock.fromJson(
              json['expirationInfo'] as Map<String, dynamic>)
      ..intervalInfo = json['intervalInfo'] == null
          ? null
          : DestinyRecordIntervalBlock.fromJson(
              json['intervalInfo'] as Map<String, dynamic>)
      ..rewardItems = (json['rewardItems'] as List<dynamic>?)
          ?.map((e) => DestinyItemQuantity.fromJson(e as Map<String, dynamic>))
          .toList()
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

Map<String, dynamic> _$DestinyRecordDefinitionToJson(
        DestinyRecordDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'scope': encodeDestinyScope(instance.scope),
      'presentationInfo': instance.presentationInfo,
      'loreHash': instance.loreHash,
      'objectiveHashes': instance.objectiveHashes,
      'recordValueStyle':
          encodeDestinyRecordValueStyle(instance.recordValueStyle),
      'forTitleGilding': instance.forTitleGilding,
      'titleInfo': instance.titleInfo,
      'completionInfo': instance.completionInfo,
      'stateInfo': instance.stateInfo,
      'requirements': instance.requirements,
      'expirationInfo': instance.expirationInfo,
      'intervalInfo': instance.intervalInfo,
      'rewardItems': instance.rewardItems,
      'presentationNodeType':
          encodeDestinyPresentationNodeType(instance.presentationNodeType),
      'traitIds': instance.traitIds,
      'traitHashes': instance.traitHashes,
      'parentNodeHashes': instance.parentNodeHashes,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
