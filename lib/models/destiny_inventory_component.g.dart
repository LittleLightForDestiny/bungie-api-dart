// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_inventory_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyInventoryComponent _$DestinyInventoryComponentFromJson(
    Map<String, dynamic> json) {
  return DestinyInventoryComponent()
    ..items = (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyItemComponent.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DestinyInventoryComponentToJson(
        DestinyInventoryComponent instance) =>
    <String, dynamic>{'items': instance.items};
