// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_character_activities_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyCharacterActivitiesComponent
    _$SingleComponentResponseOfDestinyCharacterActivitiesComponentFromJson(
            Map<String, dynamic> json) =>
        SingleComponentResponseOfDestinyCharacterActivitiesComponent()
          ..data = json['data'] == null
              ? null
              : DestinyCharacterActivitiesComponent.fromJson(
                  json['data'] as Map<String, dynamic>)
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
    _$SingleComponentResponseOfDestinyCharacterActivitiesComponentToJson(
            SingleComponentResponseOfDestinyCharacterActivitiesComponent
                instance) =>
        <String, dynamic>{
          'data': instance.data?.toJson(),
          'privacy': encodeComponentPrivacySetting(instance.privacy),
          'disabled': instance.disabled,
        };
