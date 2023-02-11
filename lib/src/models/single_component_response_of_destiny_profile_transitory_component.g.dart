// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_profile_transitory_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyProfileTransitoryComponent
    _$SingleComponentResponseOfDestinyProfileTransitoryComponentFromJson(
            Map<String, dynamic> json) =>
        SingleComponentResponseOfDestinyProfileTransitoryComponent()
          ..data = json['data'] == null
              ? null
              : DestinyProfileTransitoryComponent.fromJson(
                  json['data'] as Map<String, dynamic>)
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String,
    dynamic> _$SingleComponentResponseOfDestinyProfileTransitoryComponentToJson(
        SingleComponentResponseOfDestinyProfileTransitoryComponent instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'privacy': encodeComponentPrivacySetting(instance.privacy),
      'disabled': instance.disabled,
    };
