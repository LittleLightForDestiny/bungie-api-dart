// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_public_vendor_sale_item_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPublicVendorSaleItemComponent
    _$DestinyPublicVendorSaleItemComponentFromJson(Map<String, dynamic> json) =>
        DestinyPublicVendorSaleItemComponent()
          ..vendorItemIndex = (json['vendorItemIndex'] as num?)?.toInt()
          ..itemHash = (json['itemHash'] as num?)?.toInt()
          ..overrideStyleItemHash =
              (json['overrideStyleItemHash'] as num?)?.toInt()
          ..quantity = (json['quantity'] as num?)?.toInt()
          ..costs = (json['costs'] as List<dynamic>?)
              ?.map((e) =>
                  DestinyItemQuantity.fromJson(e as Map<String, dynamic>))
              .toList()
          ..overrideNextRefreshDate = json['overrideNextRefreshDate'] as String?
          ..apiPurchasable = json['apiPurchasable'] as bool?;

Map<String, dynamic> _$DestinyPublicVendorSaleItemComponentToJson(
        DestinyPublicVendorSaleItemComponent instance) =>
    <String, dynamic>{
      'vendorItemIndex': instance.vendorItemIndex,
      'itemHash': instance.itemHash,
      'overrideStyleItemHash': instance.overrideStyleItemHash,
      'quantity': instance.quantity,
      'costs': instance.costs?.map((e) => e.toJson()).toList(),
      'overrideNextRefreshDate': instance.overrideNextRefreshDate,
      'apiPurchasable': instance.apiPurchasable,
    };
