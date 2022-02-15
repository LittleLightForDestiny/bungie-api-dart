// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_character_render_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyCharacterRenderComponent
    _$SingleComponentResponseOfDestinyCharacterRenderComponentFromJson(
            Map<String, dynamic> json) =>
        SingleComponentResponseOfDestinyCharacterRenderComponent()
          ..data = json['data'] == null
              ? null
              : DestinyCharacterRenderComponent.fromJson(
                  json['data'] as Map<String, dynamic>)
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String,
    dynamic> _$SingleComponentResponseOfDestinyCharacterRenderComponentToJson(
        SingleComponentResponseOfDestinyCharacterRenderComponent instance) =>
    <String, dynamic>{
      'data': instance.data,
      'privacy': encodeComponentPrivacySetting(instance.privacy),
      'disabled': instance.disabled,
    };
