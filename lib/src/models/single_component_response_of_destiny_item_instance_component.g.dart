// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_item_instance_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyItemInstanceComponent
    _$SingleComponentResponseOfDestinyItemInstanceComponentFromJson(
        Map<String, dynamic> json) {
  return SingleComponentResponseOfDestinyItemInstanceComponent()
    ..data = json['data'] == null
        ? null
        : DestinyItemInstanceComponent.fromJson(
            json['data'] as Map<String, dynamic>)
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic>
    _$SingleComponentResponseOfDestinyItemInstanceComponentToJson(
            SingleComponentResponseOfDestinyItemInstanceComponent instance) =>
        <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
