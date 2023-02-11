// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_platform_silver_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyPlatformSilverComponent
    _$SingleComponentResponseOfDestinyPlatformSilverComponentFromJson(
            Map<String, dynamic> json) =>
        SingleComponentResponseOfDestinyPlatformSilverComponent()
          ..data = json['data'] == null
              ? null
              : DestinyPlatformSilverComponent.fromJson(
                  json['data'] as Map<String, dynamic>)
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
    _$SingleComponentResponseOfDestinyPlatformSilverComponentToJson(
            SingleComponentResponseOfDestinyPlatformSilverComponent instance) =>
        <String, dynamic>{
          'data': instance.data?.toJson(),
          'privacy': encodeComponentPrivacySetting(instance.privacy),
          'disabled': instance.disabled,
        };
