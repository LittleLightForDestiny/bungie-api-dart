// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_inventory_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyInventoryComponent
    _$SingleComponentResponseOfDestinyInventoryComponentFromJson(
        Map<String, dynamic> json) {
  return SingleComponentResponseOfDestinyInventoryComponent()
    ..data = json['data'] == null
        ? null
        : DestinyInventoryComponent.fromJson(
            json['data'] as Map<String, dynamic>)
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic> _$SingleComponentResponseOfDestinyInventoryComponentToJson(
        SingleComponentResponseOfDestinyInventoryComponent instance) =>
    <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
