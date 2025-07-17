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
      ..loreHash = (json['loreHash'] as num?)?.toInt()
      ..objectiveHashes = (json['objectiveHashes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList()
      ..recordValueStyle =
          decodeDestinyRecordValueStyle(json['recordValueStyle'])
      ..forTitleGilding = json['forTitleGilding'] as bool?
      ..shouldShowLargeIcons = json['shouldShowLargeIcons'] as bool?
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
      ..recordTypeName = json['recordTypeName'] as String?
      ..presentationNodeType =
          decodeDestinyPresentationNodeType(json['presentationNodeType'])
      ..traitIds =
          (json['traitIds'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..traitHashes = (json['traitHashes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList()
      ..parentNodeHashes = (json['parentNodeHashes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyRecordDefinitionToJson(
        DestinyRecordDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties?.toJson(),
      'scope': encodeDestinyScope(instance.scope),
      'presentationInfo': instance.presentationInfo?.toJson(),
      'loreHash': instance.loreHash,
      'objectiveHashes': instance.objectiveHashes,
      'recordValueStyle':
          encodeDestinyRecordValueStyle(instance.recordValueStyle),
      'forTitleGilding': instance.forTitleGilding,
      'shouldShowLargeIcons': instance.shouldShowLargeIcons,
      'titleInfo': instance.titleInfo?.toJson(),
      'completionInfo': instance.completionInfo?.toJson(),
      'stateInfo': instance.stateInfo?.toJson(),
      'requirements': instance.requirements?.toJson(),
      'expirationInfo': instance.expirationInfo?.toJson(),
      'intervalInfo': instance.intervalInfo?.toJson(),
      'rewardItems': instance.rewardItems?.map((e) => e.toJson()).toList(),
      'recordTypeName': instance.recordTypeName,
      'presentationNodeType':
          encodeDestinyPresentationNodeType(instance.presentationNodeType),
      'traitIds': instance.traitIds,
      'traitHashes': instance.traitHashes,
      'parentNodeHashes': instance.parentNodeHashes,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
