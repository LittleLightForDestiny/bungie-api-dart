// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_vendor_source_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemVendorSourceReference _$DestinyItemVendorSourceReferenceFromJson(
  Map<String, dynamic> json,
) =>
    DestinyItemVendorSourceReference()
      ..vendorHash = (json['vendorHash'] as num?)?.toInt()
      ..vendorItemIndexes =
          (json['vendorItemIndexes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList();

Map<String, dynamic> _$DestinyItemVendorSourceReferenceToJson(
  DestinyItemVendorSourceReference instance,
) => <String, dynamic>{
  'vendorHash': instance.vendorHash,
  'vendorItemIndexes': instance.vendorItemIndexes,
};
