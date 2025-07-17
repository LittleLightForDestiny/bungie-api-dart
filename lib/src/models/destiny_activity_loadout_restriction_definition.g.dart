// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_loadout_restriction_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityLoadoutRestrictionDefinition
_$DestinyActivityLoadoutRestrictionDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyActivityLoadoutRestrictionDefinition()
      ..restrictedItemFilterHash =
          (json['restrictedItemFilterHash'] as num?)?.toInt()
      ..restrictedEquipmentSlotHashes =
          (json['restrictedEquipmentSlotHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyActivityLoadoutRestrictionDefinitionToJson(
  DestinyActivityLoadoutRestrictionDefinition instance,
) => <String, dynamic>{
  'restrictedItemFilterHash': instance.restrictedItemFilterHash,
  'restrictedEquipmentSlotHashes': instance.restrictedEquipmentSlotHashes,
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
