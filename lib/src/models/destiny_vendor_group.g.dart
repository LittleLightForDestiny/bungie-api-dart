// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorGroup _$DestinyVendorGroupFromJson(Map<String, dynamic> json) =>
    DestinyVendorGroup()
      ..vendorGroupHash = (json['vendorGroupHash'] as num?)?.toInt()
      ..vendorHashes = (json['vendorHashes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList();

Map<String, dynamic> _$DestinyVendorGroupToJson(DestinyVendorGroup instance) =>
    <String, dynamic>{
      'vendorGroupHash': instance.vendorGroupHash,
      'vendorHashes': instance.vendorHashes,
    };
