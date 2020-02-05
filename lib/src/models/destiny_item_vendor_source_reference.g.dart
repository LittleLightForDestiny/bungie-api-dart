// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_vendor_source_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemVendorSourceReference _$DestinyItemVendorSourceReferenceFromJson(
    Map<String, dynamic> json) {
  return DestinyItemVendorSourceReference()
    ..vendorHash = json['vendorHash'] as int
    ..vendorItemIndexes =
        (json['vendorItemIndexes'] as List)?.map((e) => e as int)?.toList();
}

Map<String, dynamic> _$DestinyItemVendorSourceReferenceToJson(
        DestinyItemVendorSourceReference instance) =>
    <String, dynamic>{
      'vendorHash': instance.vendorHash,
      'vendorItemIndexes': instance.vendorItemIndexes,
    };
