// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_collectible_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCollectibleDefinition _$DestinyCollectibleDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyCollectibleDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..scope = decodeDestinyScope(json['scope'])
      ..sourceString = json['sourceString'] as String?
      ..sourceHash = (json['sourceHash'] as num?)?.toInt()
      ..itemHash = (json['itemHash'] as num?)?.toInt()
      ..acquisitionInfo =
          json['acquisitionInfo'] == null
              ? null
              : DestinyCollectibleAcquisitionBlock.fromJson(
                json['acquisitionInfo'] as Map<String, dynamic>,
              )
      ..stateInfo =
          json['stateInfo'] == null
              ? null
              : DestinyCollectibleStateBlock.fromJson(
                json['stateInfo'] as Map<String, dynamic>,
              )
      ..presentationInfo =
          json['presentationInfo'] == null
              ? null
              : DestinyPresentationChildBlock.fromJson(
                json['presentationInfo'] as Map<String, dynamic>,
              )
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

Map<String, dynamic> _$DestinyCollectibleDefinitionToJson(
  DestinyCollectibleDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'scope': encodeDestinyScope(instance.scope),
  'sourceString': instance.sourceString,
  'sourceHash': instance.sourceHash,
  'itemHash': instance.itemHash,
  'acquisitionInfo': instance.acquisitionInfo?.toJson(),
  'stateInfo': instance.stateInfo?.toJson(),
  'presentationInfo': instance.presentationInfo?.toJson(),
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
