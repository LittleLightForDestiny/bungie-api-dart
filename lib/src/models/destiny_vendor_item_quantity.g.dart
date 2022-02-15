// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_item_quantity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorItemQuantity _$DestinyVendorItemQuantityFromJson(
        Map<String, dynamic> json) =>
    DestinyVendorItemQuantity()
      ..itemHash = json['itemHash'] as int?
      ..itemInstanceId = json['itemInstanceId'] as String?
      ..quantity = json['quantity'] as int?
      ..hasConditionalVisibility = json['hasConditionalVisibility'] as bool?;

Map<String, dynamic> _$DestinyVendorItemQuantityToJson(
        DestinyVendorItemQuantity instance) =>
    <String, dynamic>{
      'itemHash': instance.itemHash,
      'itemInstanceId': instance.itemInstanceId,
      'quantity': instance.quantity,
      'hasConditionalVisibility': instance.hasConditionalVisibility,
    };
