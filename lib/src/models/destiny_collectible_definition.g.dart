// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_collectible_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCollectibleDefinition _$DestinyCollectibleDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyCollectibleDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..scope = decodeDestinyScope(json['scope'])
      ..sourceString = json['sourceString'] as String?
      ..sourceHash = json['sourceHash'] as int?
      ..itemHash = json['itemHash'] as int?
      ..acquisitionInfo = json['acquisitionInfo'] == null
          ? null
          : DestinyCollectibleAcquisitionBlock.fromJson(
              json['acquisitionInfo'] as Map<String, dynamic>)
      ..stateInfo = json['stateInfo'] == null
          ? null
          : DestinyCollectibleStateBlock.fromJson(
              json['stateInfo'] as Map<String, dynamic>)
      ..presentationInfo = json['presentationInfo'] == null
          ? null
          : DestinyPresentationChildBlock.fromJson(
              json['presentationInfo'] as Map<String, dynamic>)
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

Map<String, dynamic> _$DestinyCollectibleDefinitionToJson(
        DestinyCollectibleDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'scope': encodeDestinyScope(instance.scope),
      'sourceString': instance.sourceString,
      'sourceHash': instance.sourceHash,
      'itemHash': instance.itemHash,
      'acquisitionInfo': instance.acquisitionInfo,
      'stateInfo': instance.stateInfo,
      'presentationInfo': instance.presentationInfo,
      'presentationNodeType':
          encodeDestinyPresentationNodeType(instance.presentationNodeType),
      'traitIds': instance.traitIds,
      'traitHashes': instance.traitHashes,
      'parentNodeHashes': instance.parentNodeHashes,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
