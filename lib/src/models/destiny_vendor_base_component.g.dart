// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_base_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorBaseComponent _$DestinyVendorBaseComponentFromJson(
  Map<String, dynamic> json,
) =>
    DestinyVendorBaseComponent()
      ..vendorHash = (json['vendorHash'] as num?)?.toInt()
      ..nextRefreshDate = json['nextRefreshDate'] as String?
      ..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$DestinyVendorBaseComponentToJson(
  DestinyVendorBaseComponent instance,
) => <String, dynamic>{
  'vendorHash': instance.vendorHash,
  'nextRefreshDate': instance.nextRefreshDate,
  'enabled': instance.enabled,
};
