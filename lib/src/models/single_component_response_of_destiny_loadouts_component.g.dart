// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_loadouts_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyLoadoutsComponent
_$SingleComponentResponseOfDestinyLoadoutsComponentFromJson(
  Map<String, dynamic> json,
) =>
    SingleComponentResponseOfDestinyLoadoutsComponent()
      ..data =
          json['data'] == null
              ? null
              : DestinyLoadoutsComponent.fromJson(
                json['data'] as Map<String, dynamic>,
              )
      ..privacy = decodeComponentPrivacySetting(json['privacy'])
      ..disabled = json['disabled'] as bool?;

Map<String, dynamic> _$SingleComponentResponseOfDestinyLoadoutsComponentToJson(
  SingleComponentResponseOfDestinyLoadoutsComponent instance,
) => <String, dynamic>{
  'data': instance.data?.toJson(),
  'privacy': encodeComponentPrivacySetting(instance.privacy),
  'disabled': instance.disabled,
};
