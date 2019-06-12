// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_quantity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemQuantity _$DestinyItemQuantityFromJson(Map<String, dynamic> json) {
  return DestinyItemQuantity()
    ..itemHash = json['itemHash'] as int
    ..itemInstanceId = json['itemInstanceId'] as String
    ..quantity = json['quantity'] as int;
}

Map<String, dynamic> _$DestinyItemQuantityToJson(
        DestinyItemQuantity instance) =>
    <String, dynamic>{
      'itemHash': instance.itemHash,
      'itemInstanceId': instance.itemInstanceId,
      'quantity': instance.quantity
    };
