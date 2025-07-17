// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_social_commendations_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinySocialCommendationsComponent
_$SingleComponentResponseOfDestinySocialCommendationsComponentFromJson(
  Map<String, dynamic> json,
) =>
    SingleComponentResponseOfDestinySocialCommendationsComponent()
      ..data =
          json['data'] == null
              ? null
              : DestinySocialCommendationsComponent.fromJson(
                json['data'] as Map<String, dynamic>,
              )
      ..privacy = decodeComponentPrivacySetting(json['privacy'])
      ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
_$SingleComponentResponseOfDestinySocialCommendationsComponentToJson(
  SingleComponentResponseOfDestinySocialCommendationsComponent instance,
) => <String, dynamic>{
  'data': instance.data?.toJson(),
  'privacy': encodeComponentPrivacySetting(instance.privacy),
  'disabled': instance.disabled,
};
