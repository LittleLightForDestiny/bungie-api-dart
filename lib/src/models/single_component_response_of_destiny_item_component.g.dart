// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_item_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyItemComponent
    _$SingleComponentResponseOfDestinyItemComponentFromJson(
        Map<String, dynamic> json) {
  return SingleComponentResponseOfDestinyItemComponent()
    ..data = json['data'] == null
        ? null
        : DestinyItemComponent.fromJson(json['data'] as Map<String, dynamic>)
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic> _$SingleComponentResponseOfDestinyItemComponentToJson(
        SingleComponentResponseOfDestinyItemComponent instance) =>
    <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
