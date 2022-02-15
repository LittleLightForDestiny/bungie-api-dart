// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_character_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyCharacterComponent
    _$SingleComponentResponseOfDestinyCharacterComponentFromJson(
            Map<String, dynamic> json) =>
        SingleComponentResponseOfDestinyCharacterComponent()
          ..data = json['data'] == null
              ? null
              : DestinyCharacterComponent.fromJson(
                  json['data'] as Map<String, dynamic>)
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic> _$SingleComponentResponseOfDestinyCharacterComponentToJson(
        SingleComponentResponseOfDestinyCharacterComponent instance) =>
    <String, dynamic>{
      'data': instance.data,
      'privacy': encodeComponentPrivacySetting(instance.privacy),
      'disabled': instance.disabled,
    };
