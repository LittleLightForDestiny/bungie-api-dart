// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_item_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyItemComponent
_$SingleComponentResponseOfDestinyItemComponentFromJson(
  Map<String, dynamic> json,
) =>
    SingleComponentResponseOfDestinyItemComponent()
      ..data =
          json['data'] == null
              ? null
              : DestinyItemComponent.fromJson(
                json['data'] as Map<String, dynamic>,
              )
      ..privacy = decodeComponentPrivacySetting(json['privacy'])
      ..disabled = json['disabled'] as bool?;

Map<String, dynamic> _$SingleComponentResponseOfDestinyItemComponentToJson(
  SingleComponentResponseOfDestinyItemComponent instance,
) => <String, dynamic>{
  'data': instance.data?.toJson(),
  'privacy': encodeComponentPrivacySetting(instance.privacy),
  'disabled': instance.disabled,
};
