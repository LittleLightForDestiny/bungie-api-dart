// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_public_vendor_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPublicVendorComponent _$DestinyPublicVendorComponentFromJson(
  Map<String, dynamic> json,
) =>
    DestinyPublicVendorComponent()
      ..vendorHash = (json['vendorHash'] as num?)?.toInt()
      ..nextRefreshDate = json['nextRefreshDate'] as String?
      ..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$DestinyPublicVendorComponentToJson(
  DestinyPublicVendorComponent instance,
) => <String, dynamic>{
  'vendorHash': instance.vendorHash,
  'nextRefreshDate': instance.nextRefreshDate,
  'enabled': instance.enabled,
};
