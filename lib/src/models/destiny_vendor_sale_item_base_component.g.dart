// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_sale_item_base_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorSaleItemBaseComponent _$DestinyVendorSaleItemBaseComponentFromJson(
  Map<String, dynamic> json,
) =>
    DestinyVendorSaleItemBaseComponent()
      ..vendorItemIndex = (json['vendorItemIndex'] as num?)?.toInt()
      ..itemHash = (json['itemHash'] as num?)?.toInt()
      ..overrideStyleItemHash = (json['overrideStyleItemHash'] as num?)?.toInt()
      ..quantity = (json['quantity'] as num?)?.toInt()
      ..costs =
          (json['costs'] as List<dynamic>?)
              ?.map(
                (e) => DestinyItemQuantity.fromJson(e as Map<String, dynamic>),
              )
              .toList()
      ..overrideNextRefreshDate = json['overrideNextRefreshDate'] as String?
      ..apiPurchasable = json['apiPurchasable'] as bool?;

Map<String, dynamic> _$DestinyVendorSaleItemBaseComponentToJson(
  DestinyVendorSaleItemBaseComponent instance,
) => <String, dynamic>{
  'vendorItemIndex': instance.vendorItemIndex,
  'itemHash': instance.itemHash,
  'overrideStyleItemHash': instance.overrideStyleItemHash,
  'quantity': instance.quantity,
  'costs': instance.costs?.map((e) => e.toJson()).toList(),
  'overrideNextRefreshDate': instance.overrideNextRefreshDate,
  'apiPurchasable': instance.apiPurchasable,
};
