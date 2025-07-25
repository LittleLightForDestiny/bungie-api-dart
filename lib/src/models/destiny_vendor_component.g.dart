// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorComponent _$DestinyVendorComponentFromJson(
  Map<String, dynamic> json,
) =>
    DestinyVendorComponent()
      ..canPurchase = json['canPurchase'] as bool?
      ..progression =
          json['progression'] == null
              ? null
              : DestinyProgression.fromJson(
                json['progression'] as Map<String, dynamic>,
              )
      ..vendorLocationIndex = (json['vendorLocationIndex'] as num?)?.toInt()
      ..seasonalRank = (json['seasonalRank'] as num?)?.toInt()
      ..vendorHash = (json['vendorHash'] as num?)?.toInt()
      ..nextRefreshDate = json['nextRefreshDate'] as String?
      ..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$DestinyVendorComponentToJson(
  DestinyVendorComponent instance,
) => <String, dynamic>{
  'canPurchase': instance.canPurchase,
  'progression': instance.progression?.toJson(),
  'vendorLocationIndex': instance.vendorLocationIndex,
  'seasonalRank': instance.seasonalRank,
  'vendorHash': instance.vendorHash,
  'nextRefreshDate': instance.nextRefreshDate,
  'enabled': instance.enabled,
};
