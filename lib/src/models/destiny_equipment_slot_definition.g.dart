// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_equipment_slot_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyEquipmentSlotDefinition _$DestinyEquipmentSlotDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyEquipmentSlotDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..equipmentCategoryHash = (json['equipmentCategoryHash'] as num?)?.toInt()
      ..bucketTypeHash = (json['bucketTypeHash'] as num?)?.toInt()
      ..applyCustomArtDyes = json['applyCustomArtDyes'] as bool?
      ..artDyeChannels =
          (json['artDyeChannels'] as List<dynamic>?)
              ?.map(
                (e) =>
                    DestinyArtDyeReference.fromJson(e as Map<String, dynamic>),
              )
              .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyEquipmentSlotDefinitionToJson(
  DestinyEquipmentSlotDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'equipmentCategoryHash': instance.equipmentCategoryHash,
  'bucketTypeHash': instance.bucketTypeHash,
  'applyCustomArtDyes': instance.applyCustomArtDyes,
  'artDyeChannels': instance.artDyeChannels?.map((e) => e.toJson()).toList(),
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
