// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_inventory_flyout_bucket_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorInventoryFlyoutBucketDefinition
    _$DestinyVendorInventoryFlyoutBucketDefinitionFromJson(
        Map<String, dynamic> json) {
  return DestinyVendorInventoryFlyoutBucketDefinition()
    ..collapsible = json['collapsible'] as bool
    ..inventoryBucketHash = json['inventoryBucketHash'] as int
    ..sortItemsBy = json['sortItemsBy'] as int;
}

Map<String, dynamic> _$DestinyVendorInventoryFlyoutBucketDefinitionToJson(
        DestinyVendorInventoryFlyoutBucketDefinition instance) =>
    <String, dynamic>{
      'collapsible': instance.collapsible,
      'inventoryBucketHash': instance.inventoryBucketHash,
      'sortItemsBy': instance.sortItemsBy
    };
