// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_inventory_flyout_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorInventoryFlyoutDefinition
_$DestinyVendorInventoryFlyoutDefinitionFromJson(Map<String, dynamic> json) =>
    DestinyVendorInventoryFlyoutDefinition()
      ..lockedDescription = json['lockedDescription'] as String?
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..buckets =
          (json['buckets'] as List<dynamic>?)
              ?.map(
                (e) => DestinyVendorInventoryFlyoutBucketDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..flyoutId = (json['flyoutId'] as num?)?.toInt()
      ..suppressNewness = json['suppressNewness'] as bool?
      ..equipmentSlotHash = (json['equipmentSlotHash'] as num?)?.toInt();

Map<String, dynamic> _$DestinyVendorInventoryFlyoutDefinitionToJson(
  DestinyVendorInventoryFlyoutDefinition instance,
) => <String, dynamic>{
  'lockedDescription': instance.lockedDescription,
  'displayProperties': instance.displayProperties?.toJson(),
  'buckets': instance.buckets?.map((e) => e.toJson()).toList(),
  'flyoutId': instance.flyoutId,
  'suppressNewness': instance.suppressNewness,
  'equipmentSlotHash': instance.equipmentSlotHash,
};
