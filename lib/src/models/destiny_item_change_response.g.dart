// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_change_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemChangeResponse _$DestinyItemChangeResponseFromJson(
        Map<String, dynamic> json) =>
    DestinyItemChangeResponse()
      ..item = json['item'] == null
          ? null
          : DestinyItemResponse.fromJson(json['item'] as Map<String, dynamic>)
      ..addedInventoryItems = (json['addedInventoryItems'] as List<dynamic>?)
          ?.map((e) => DestinyItemComponent.fromJson(e as Map<String, dynamic>))
          .toList()
      ..removedInventoryItems = (json['removedInventoryItems']
              as List<dynamic>?)
          ?.map((e) => DestinyItemComponent.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DestinyItemChangeResponseToJson(
        DestinyItemChangeResponse instance) =>
    <String, dynamic>{
      'item': instance.item,
      'addedInventoryItems': instance.addedInventoryItems,
      'removedInventoryItems': instance.removedInventoryItems,
    };
