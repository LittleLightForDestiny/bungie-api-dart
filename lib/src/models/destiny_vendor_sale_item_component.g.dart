// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_sale_item_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorSaleItemComponent _$DestinyVendorSaleItemComponentFromJson(
        Map<String, dynamic> json) =>
    DestinyVendorSaleItemComponent()
      ..saleStatus = json['saleStatus'] == null
          ? null
          : VendorItemStatus.fromJson(json['saleStatus'] as int)
      ..requiredUnlocks = (json['requiredUnlocks'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList()
      ..unlockStatuses = (json['unlockStatuses'] as List<dynamic>?)
          ?.map((e) => DestinyUnlockStatus.fromJson(e as Map<String, dynamic>))
          .toList()
      ..failureIndexes = (json['failureIndexes'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList()
      ..augments = json['augments'] == null
          ? null
          : DestinyVendorItemState.fromJson(json['augments'] as int)
      ..itemValueVisibility = (json['itemValueVisibility'] as List<dynamic>?)
          ?.map((e) => e as bool)
          .toList()
      ..vendorItemIndex = json['vendorItemIndex'] as int?
      ..itemHash = json['itemHash'] as int?
      ..overrideStyleItemHash = json['overrideStyleItemHash'] as int?
      ..quantity = json['quantity'] as int?
      ..costs = (json['costs'] as List<dynamic>?)
          ?.map((e) => DestinyItemQuantity.fromJson(e as Map<String, dynamic>))
          .toList()
      ..overrideNextRefreshDate = json['overrideNextRefreshDate'] as String?
      ..apiPurchasable = json['apiPurchasable'] as bool?;

Map<String, dynamic> _$DestinyVendorSaleItemComponentToJson(
        DestinyVendorSaleItemComponent instance) =>
    <String, dynamic>{
      'saleStatus': instance.saleStatus?.toJson(),
      'requiredUnlocks': instance.requiredUnlocks,
      'unlockStatuses':
          instance.unlockStatuses?.map((e) => e.toJson()).toList(),
      'failureIndexes': instance.failureIndexes,
      'augments': instance.augments?.toJson(),
      'itemValueVisibility': instance.itemValueVisibility,
      'vendorItemIndex': instance.vendorItemIndex,
      'itemHash': instance.itemHash,
      'overrideStyleItemHash': instance.overrideStyleItemHash,
      'quantity': instance.quantity,
      'costs': instance.costs?.map((e) => e.toJson()).toList(),
      'overrideNextRefreshDate': instance.overrideNextRefreshDate,
      'apiPurchasable': instance.apiPurchasable,
    };
