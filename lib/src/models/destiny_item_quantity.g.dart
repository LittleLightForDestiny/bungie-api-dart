// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_quantity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemQuantity _$DestinyItemQuantityFromJson(Map<String, dynamic> json) =>
    DestinyItemQuantity()
      ..itemHash = (json['itemHash'] as num?)?.toInt()
      ..itemInstanceId = json['itemInstanceId'] as String?
      ..quantity = (json['quantity'] as num?)?.toInt()
      ..hasConditionalVisibility = json['hasConditionalVisibility'] as bool?;

Map<String, dynamic> _$DestinyItemQuantityToJson(
        DestinyItemQuantity instance) =>
    <String, dynamic>{
      'itemHash': instance.itemHash,
      'itemInstanceId': instance.itemInstanceId,
      'quantity': instance.quantity,
      'hasConditionalVisibility': instance.hasConditionalVisibility,
    };
