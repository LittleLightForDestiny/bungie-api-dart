// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_equipment_slot_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyEquipmentSlotDefinition _$DestinyEquipmentSlotDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyEquipmentSlotDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..equipmentCategoryHash = json['equipmentCategoryHash'] as int
    ..bucketTypeHash = json['bucketTypeHash'] as int
    ..applyCustomArtDyes = json['applyCustomArtDyes'] as bool
    ..artDyeChannels = (json['artDyeChannels'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyArtDyeReference.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinyEquipmentSlotDefinitionToJson(
        DestinyEquipmentSlotDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'equipmentCategoryHash': instance.equipmentCategoryHash,
      'bucketTypeHash': instance.bucketTypeHash,
      'applyCustomArtDyes': instance.applyCustomArtDyes,
      'artDyeChannels': instance.artDyeChannels,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted
    };
