// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_character_progression_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyCharacterProgressionComponent
_$SingleComponentResponseOfDestinyCharacterProgressionComponentFromJson(
  Map<String, dynamic> json,
) =>
    SingleComponentResponseOfDestinyCharacterProgressionComponent()
      ..data =
          json['data'] == null
              ? null
              : DestinyCharacterProgressionComponent.fromJson(
                json['data'] as Map<String, dynamic>,
              )
      ..privacy = decodeComponentPrivacySetting(json['privacy'])
      ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
_$SingleComponentResponseOfDestinyCharacterProgressionComponentToJson(
  SingleComponentResponseOfDestinyCharacterProgressionComponent instance,
) => <String, dynamic>{
  'data': instance.data?.toJson(),
  'privacy': encodeComponentPrivacySetting(instance.privacy),
  'disabled': instance.disabled,
};
