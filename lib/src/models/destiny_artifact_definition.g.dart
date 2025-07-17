// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_artifact_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyArtifactDefinition _$DestinyArtifactDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyArtifactDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..translationBlock = json['translationBlock'] == null
          ? null
          : DestinyItemTranslationBlockDefinition.fromJson(
              json['translationBlock'] as Map<String, dynamic>)
      ..tiers = (json['tiers'] as List<dynamic>?)
          ?.map((e) =>
              DestinyArtifactTierDefinition.fromJson(e as Map<String, dynamic>))
          .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyArtifactDefinitionToJson(
        DestinyArtifactDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties?.toJson(),
      'translationBlock': instance.translationBlock?.toJson(),
      'tiers': instance.tiers?.map((e) => e.toJson()).toList(),
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
