// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_item_instance_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyItemInstanceComponent
_$SingleComponentResponseOfDestinyItemInstanceComponentFromJson(
  Map<String, dynamic> json,
) =>
    SingleComponentResponseOfDestinyItemInstanceComponent()
      ..data =
          json['data'] == null
              ? null
              : DestinyItemInstanceComponent.fromJson(
                json['data'] as Map<String, dynamic>,
              )
      ..privacy = decodeComponentPrivacySetting(json['privacy'])
      ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
_$SingleComponentResponseOfDestinyItemInstanceComponentToJson(
  SingleComponentResponseOfDestinyItemInstanceComponent instance,
) => <String, dynamic>{
  'data': instance.data?.toJson(),
  'privacy': encodeComponentPrivacySetting(instance.privacy),
  'disabled': instance.disabled,
};
