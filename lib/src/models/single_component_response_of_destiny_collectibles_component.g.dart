// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_collectibles_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyCollectiblesComponent
    _$SingleComponentResponseOfDestinyCollectiblesComponentFromJson(
            Map<String, dynamic> json) =>
        SingleComponentResponseOfDestinyCollectiblesComponent()
          ..data = json['data'] == null
              ? null
              : DestinyCollectiblesComponent.fromJson(
                  json['data'] as Map<String, dynamic>)
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
    _$SingleComponentResponseOfDestinyCollectiblesComponentToJson(
            SingleComponentResponseOfDestinyCollectiblesComponent instance) =>
        <String, dynamic>{
          'data': instance.data?.toJson(),
          'privacy': encodeComponentPrivacySetting(instance.privacy),
          'disabled': instance.disabled,
        };
