// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_accepted_item_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorAcceptedItemDefinition
    _$DestinyVendorAcceptedItemDefinitionFromJson(Map<String, dynamic> json) {
  return DestinyVendorAcceptedItemDefinition()
    ..acceptedInventoryBucketHash = json['acceptedInventoryBucketHash'] as int
    ..destinationInventoryBucketHash =
        json['destinationInventoryBucketHash'] as int;
}

Map<String, dynamic> _$DestinyVendorAcceptedItemDefinitionToJson(
        DestinyVendorAcceptedItemDefinition instance) =>
    <String, dynamic>{
      'acceptedInventoryBucketHash': instance.acceptedInventoryBucketHash,
      'destinationInventoryBucketHash': instance.destinationInventoryBucketHash,
    };
