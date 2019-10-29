// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_item_plug_objectives_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyItemPlugObjectivesComponent
    _$SingleComponentResponseOfDestinyItemPlugObjectivesComponentFromJson(
        Map<String, dynamic> json) {
  return SingleComponentResponseOfDestinyItemPlugObjectivesComponent()
    ..data = json['data'] == null
        ? null
        : DestinyItemPlugObjectivesComponent.fromJson(
            json['data'] as Map<String, dynamic>)
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic>
    _$SingleComponentResponseOfDestinyItemPlugObjectivesComponentToJson(
            SingleComponentResponseOfDestinyItemPlugObjectivesComponent
                instance) =>
        <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
