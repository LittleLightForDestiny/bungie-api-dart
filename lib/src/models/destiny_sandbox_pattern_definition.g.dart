// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_sandbox_pattern_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinySandboxPatternDefinition _$DestinySandboxPatternDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinySandboxPatternDefinition()
      ..patternHash = (json['patternHash'] as num?)?.toInt()
      ..patternGlobalTagIdHash =
          (json['patternGlobalTagIdHash'] as num?)?.toInt()
      ..weaponContentGroupHash =
          (json['weaponContentGroupHash'] as num?)?.toInt()
      ..weaponTranslationGroupHash =
          (json['weaponTranslationGroupHash'] as num?)?.toInt()
      ..weaponTypeHash = (json['weaponTypeHash'] as num?)?.toInt()
      ..weaponType = decodeDestinyItemSubType(json['weaponType'])
      ..filters =
          (json['filters'] as List<dynamic>?)
              ?.map(
                (e) => DestinyArrangementRegionFilterDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinySandboxPatternDefinitionToJson(
  DestinySandboxPatternDefinition instance,
) => <String, dynamic>{
  'patternHash': instance.patternHash,
  'patternGlobalTagIdHash': instance.patternGlobalTagIdHash,
  'weaponContentGroupHash': instance.weaponContentGroupHash,
  'weaponTranslationGroupHash': instance.weaponTranslationGroupHash,
  'weaponTypeHash': instance.weaponTypeHash,
  'weaponType': encodeDestinyItemSubType(instance.weaponType),
  'filters': instance.filters?.map((e) => e.toJson()).toList(),
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
