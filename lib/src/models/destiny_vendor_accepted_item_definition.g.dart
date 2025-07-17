// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_accepted_item_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorAcceptedItemDefinition
    _$DestinyVendorAcceptedItemDefinitionFromJson(Map<String, dynamic> json) =>
        DestinyVendorAcceptedItemDefinition()
          ..acceptedInventoryBucketHash =
              (json['acceptedInventoryBucketHash'] as num?)?.toInt()
          ..destinationInventoryBucketHash =
              (json['destinationInventoryBucketHash'] as num?)?.toInt();

Map<String, dynamic> _$DestinyVendorAcceptedItemDefinitionToJson(
        DestinyVendorAcceptedItemDefinition instance) =>
    <String, dynamic>{
      'acceptedInventoryBucketHash': instance.acceptedInventoryBucketHash,
      'destinationInventoryBucketHash': instance.destinationInventoryBucketHash,
    };
