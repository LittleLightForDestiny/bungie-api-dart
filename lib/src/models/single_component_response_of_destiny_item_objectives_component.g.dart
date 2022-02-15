// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_item_objectives_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyItemObjectivesComponent
    _$SingleComponentResponseOfDestinyItemObjectivesComponentFromJson(
            Map<String, dynamic> json) =>
        SingleComponentResponseOfDestinyItemObjectivesComponent()
          ..data = json['data'] == null
              ? null
              : DestinyItemObjectivesComponent.fromJson(
                  json['data'] as Map<String, dynamic>)
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
    _$SingleComponentResponseOfDestinyItemObjectivesComponentToJson(
            SingleComponentResponseOfDestinyItemObjectivesComponent instance) =>
        <String, dynamic>{
          'data': instance.data,
          'privacy': encodeComponentPrivacySetting(instance.privacy),
          'disabled': instance.disabled,
        };
