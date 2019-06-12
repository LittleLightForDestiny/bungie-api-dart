// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_public_vendor_sale_item_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPublicVendorSaleItemComponent
    _$DestinyPublicVendorSaleItemComponentFromJson(Map<String, dynamic> json) {
  return DestinyPublicVendorSaleItemComponent()
    ..vendorItemIndex = json['vendorItemIndex'] as int
    ..itemHash = json['itemHash'] as int
    ..overrideStyleItemHash = json['overrideStyleItemHash'] as int
    ..quantity = json['quantity'] as int
    ..costs = (json['costs'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyItemQuantity.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..overrideNextRefreshDate = json['overrideNextRefreshDate'] as String;
}

Map<String, dynamic> _$DestinyPublicVendorSaleItemComponentToJson(
        DestinyPublicVendorSaleItemComponent instance) =>
    <String, dynamic>{
      'vendorItemIndex': instance.vendorItemIndex,
      'itemHash': instance.itemHash,
      'overrideStyleItemHash': instance.overrideStyleItemHash,
      'quantity': instance.quantity,
      'costs': instance.costs,
      'overrideNextRefreshDate': instance.overrideNextRefreshDate
    };
