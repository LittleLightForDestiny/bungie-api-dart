// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_sandbox_pattern_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinySandboxPatternDefinition _$DestinySandboxPatternDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinySandboxPatternDefinition()
      ..patternHash = json['patternHash'] as int?
      ..patternGlobalTagIdHash = json['patternGlobalTagIdHash'] as int?
      ..weaponContentGroupHash = json['weaponContentGroupHash'] as int?
      ..weaponTranslationGroupHash = json['weaponTranslationGroupHash'] as int?
      ..weaponTypeHash = json['weaponTypeHash'] as int?
      ..weaponType = decodeDestinyItemSubType(json['weaponType'])
      ..filters = (json['filters'] as List<dynamic>?)
          ?.map((e) => DestinyArrangementRegionFilterDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..hash = json['hash'] as int?
      ..index = json['index'] as int?
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinySandboxPatternDefinitionToJson(
        DestinySandboxPatternDefinition instance) =>
    <String, dynamic>{
      'patternHash': instance.patternHash,
      'patternGlobalTagIdHash': instance.patternGlobalTagIdHash,
      'weaponContentGroupHash': instance.weaponContentGroupHash,
      'weaponTranslationGroupHash': instance.weaponTranslationGroupHash,
      'weaponTypeHash': instance.weaponTypeHash,
      'weaponType': encodeDestinyItemSubType(instance.weaponType),
      'filters': instance.filters,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
