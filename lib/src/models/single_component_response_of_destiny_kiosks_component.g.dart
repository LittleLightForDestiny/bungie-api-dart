// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_kiosks_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyKiosksComponent
    _$SingleComponentResponseOfDestinyKiosksComponentFromJson(
            Map<String, dynamic> json) =>
        SingleComponentResponseOfDestinyKiosksComponent()
          ..data = json['data'] == null
              ? null
              : DestinyKiosksComponent.fromJson(
                  json['data'] as Map<String, dynamic>)
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic> _$SingleComponentResponseOfDestinyKiosksComponentToJson(
        SingleComponentResponseOfDestinyKiosksComponent instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'privacy': encodeComponentPrivacySetting(instance.privacy),
      'disabled': instance.disabled,
    };
