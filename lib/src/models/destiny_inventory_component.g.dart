// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_inventory_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyInventoryComponent _$DestinyInventoryComponentFromJson(
  Map<String, dynamic> json,
) =>
    DestinyInventoryComponent()
      ..items =
          (json['items'] as List<dynamic>?)
              ?.map(
                (e) => DestinyItemComponent.fromJson(e as Map<String, dynamic>),
              )
              .toList();

Map<String, dynamic> _$DestinyInventoryComponentToJson(
  DestinyInventoryComponent instance,
) => <String, dynamic>{
  'items': instance.items?.map((e) => e.toJson()).toList(),
};
