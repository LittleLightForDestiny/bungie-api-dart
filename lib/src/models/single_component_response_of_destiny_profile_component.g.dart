// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_profile_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyProfileComponent
    _$SingleComponentResponseOfDestinyProfileComponentFromJson(
            Map<String, dynamic> json) =>
        SingleComponentResponseOfDestinyProfileComponent()
          ..data = json['data'] == null
              ? null
              : DestinyProfileComponent.fromJson(
                  json['data'] as Map<String, dynamic>)
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic> _$SingleComponentResponseOfDestinyProfileComponentToJson(
        SingleComponentResponseOfDestinyProfileComponent instance) =>
    <String, dynamic>{
      'data': instance.data,
      'privacy': encodeComponentPrivacySetting(instance.privacy),
      'disabled': instance.disabled,
    };
