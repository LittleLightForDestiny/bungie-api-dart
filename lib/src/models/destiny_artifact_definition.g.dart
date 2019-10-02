// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_artifact_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyArtifactDefinition _$DestinyArtifactDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyArtifactDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..translationBlock = json['translationBlock'] == null
        ? null
        : DestinyItemTranslationBlockDefinition.fromJson(
            json['translationBlock'] as Map<String, dynamic>)
    ..tiers = (json['tiers'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyArtifactTierDefinition.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinyArtifactDefinitionToJson(
        DestinyArtifactDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'translationBlock': instance.translationBlock,
      'tiers': instance.tiers,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted
    };
