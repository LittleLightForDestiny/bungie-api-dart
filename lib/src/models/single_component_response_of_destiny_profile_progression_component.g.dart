// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_profile_progression_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyProfileProgressionComponent
_$SingleComponentResponseOfDestinyProfileProgressionComponentFromJson(
  Map<String, dynamic> json,
) =>
    SingleComponentResponseOfDestinyProfileProgressionComponent()
      ..data =
          json['data'] == null
              ? null
              : DestinyProfileProgressionComponent.fromJson(
                json['data'] as Map<String, dynamic>,
              )
      ..privacy = decodeComponentPrivacySetting(json['privacy'])
      ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
_$SingleComponentResponseOfDestinyProfileProgressionComponentToJson(
  SingleComponentResponseOfDestinyProfileProgressionComponent instance,
) => <String, dynamic>{
  'data': instance.data?.toJson(),
  'privacy': encodeComponentPrivacySetting(instance.privacy),
  'disabled': instance.disabled,
};
