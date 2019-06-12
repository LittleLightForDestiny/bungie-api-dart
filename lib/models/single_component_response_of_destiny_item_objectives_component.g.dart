// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_item_objectives_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyItemObjectivesComponent
    _$SingleComponentResponseOfDestinyItemObjectivesComponentFromJson(
        Map<String, dynamic> json) {
  return SingleComponentResponseOfDestinyItemObjectivesComponent()
    ..data = json['data'] == null
        ? null
        : DestinyItemObjectivesComponent.fromJson(
            json['data'] as Map<String, dynamic>)
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic>
    _$SingleComponentResponseOfDestinyItemObjectivesComponentToJson(
            SingleComponentResponseOfDestinyItemObjectivesComponent instance) =>
        <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
