// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_item_plug_objectives_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyItemPlugObjectivesComponent
    _$SingleComponentResponseOfDestinyItemPlugObjectivesComponentFromJson(
            Map<String, dynamic> json) =>
        SingleComponentResponseOfDestinyItemPlugObjectivesComponent()
          ..data = json['data'] == null
              ? null
              : DestinyItemPlugObjectivesComponent.fromJson(
                  json['data'] as Map<String, dynamic>)
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
    _$SingleComponentResponseOfDestinyItemPlugObjectivesComponentToJson(
            SingleComponentResponseOfDestinyItemPlugObjectivesComponent
                instance) =>
        <String, dynamic>{
          'data': instance.data?.toJson(),
          'privacy': encodeComponentPrivacySetting(instance.privacy),
          'disabled': instance.disabled,
        };
