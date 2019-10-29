// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_item_reusable_plugs_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyItemReusablePlugsComponent
    _$SingleComponentResponseOfDestinyItemReusablePlugsComponentFromJson(
        Map<String, dynamic> json) {
  return SingleComponentResponseOfDestinyItemReusablePlugsComponent()
    ..data = json['data'] == null
        ? null
        : DestinyItemReusablePlugsComponent.fromJson(
            json['data'] as Map<String, dynamic>)
    ..privacy = json['privacy'] as int;
}

Map<String,
    dynamic> _$SingleComponentResponseOfDestinyItemReusablePlugsComponentToJson(
        SingleComponentResponseOfDestinyItemReusablePlugsComponent instance) =>
    <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
