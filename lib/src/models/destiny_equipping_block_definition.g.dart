// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_equipping_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyEquippingBlockDefinition _$DestinyEquippingBlockDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyEquippingBlockDefinition()
      ..gearsetItemHash = json['gearsetItemHash'] as int?
      ..uniqueLabel = json['uniqueLabel'] as String?
      ..uniqueLabelHash = json['uniqueLabelHash'] as int?
      ..equipmentSlotTypeHash = json['equipmentSlotTypeHash'] as int?
      ..attributes = json['attributes'] == null
          ? null
          : EquippingItemBlockAttributes.fromJson(json['attributes'] as int)
      ..ammoType = decodeDestinyAmmunitionType(json['ammoType'])
      ..displayStrings = (json['displayStrings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList();

Map<String, dynamic> _$DestinyEquippingBlockDefinitionToJson(
        DestinyEquippingBlockDefinition instance) =>
    <String, dynamic>{
      'gearsetItemHash': instance.gearsetItemHash,
      'uniqueLabel': instance.uniqueLabel,
      'uniqueLabelHash': instance.uniqueLabelHash,
      'equipmentSlotTypeHash': instance.equipmentSlotTypeHash,
      'attributes': instance.attributes?.toJson(),
      'ammoType': encodeDestinyAmmunitionType(instance.ammoType),
      'displayStrings': instance.displayStrings,
    };
