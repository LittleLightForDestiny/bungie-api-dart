// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_translation_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemTranslationBlockDefinition
    _$DestinyItemTranslationBlockDefinitionFromJson(Map<String, dynamic> json) {
  return DestinyItemTranslationBlockDefinition()
    ..weaponPatternIdentifier = json['weaponPatternIdentifier'] as String?
    ..weaponPatternHash = json['weaponPatternHash'] as int?
    ..defaultDyes = (json['defaultDyes'] as List<dynamic>?)
        ?.map((e) => DyeReference.fromJson(e as Map<String, dynamic>))
        .toList()
    ..lockedDyes = (json['lockedDyes'] as List<dynamic>?)
        ?.map((e) => DyeReference.fromJson(e as Map<String, dynamic>))
        .toList()
    ..customDyes = (json['customDyes'] as List<dynamic>?)
        ?.map((e) => DyeReference.fromJson(e as Map<String, dynamic>))
        .toList()
    ..arrangements = (json['arrangements'] as List<dynamic>?)
        ?.map((e) => DestinyGearArtArrangementReference.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..hasGeometry = json['hasGeometry'] as bool?;
}

Map<String, dynamic> _$DestinyItemTranslationBlockDefinitionToJson(
        DestinyItemTranslationBlockDefinition instance) =>
    <String, dynamic>{
      'weaponPatternIdentifier': instance.weaponPatternIdentifier,
      'weaponPatternHash': instance.weaponPatternHash,
      'defaultDyes': instance.defaultDyes,
      'lockedDyes': instance.lockedDyes,
      'customDyes': instance.customDyes,
      'arrangements': instance.arrangements,
      'hasGeometry': instance.hasGeometry,
    };
