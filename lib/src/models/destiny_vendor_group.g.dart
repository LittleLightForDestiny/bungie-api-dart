// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorGroup _$DestinyVendorGroupFromJson(Map<String, dynamic> json) {
  return DestinyVendorGroup()
    ..vendorGroupHash = json['vendorGroupHash'] as int
    ..vendorHashes =
        (json['vendorHashes'] as List)?.map((e) => e as int)?.toList();
}

Map<String, dynamic> _$DestinyVendorGroupToJson(DestinyVendorGroup instance) =>
    <String, dynamic>{
      'vendorGroupHash': instance.vendorGroupHash,
      'vendorHashes': instance.vendorHashes,
    };
