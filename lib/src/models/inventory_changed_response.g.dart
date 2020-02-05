// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_changed_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryChangedResponse _$InventoryChangedResponseFromJson(
    Map<String, dynamic> json) {
  return InventoryChangedResponse()
    ..addedInventoryItems = (json['addedInventoryItems'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyItemComponent.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..removedInventoryItems = (json['removedInventoryItems'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyItemComponent.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$InventoryChangedResponseToJson(
        InventoryChangedResponse instance) =>
    <String, dynamic>{
      'addedInventoryItems': instance.addedInventoryItems,
      'removedInventoryItems': instance.removedInventoryItems,
    };
