// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_item_perks_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyItemPerksComponent
    _$SingleComponentResponseOfDestinyItemPerksComponentFromJson(
            Map<String, dynamic> json) =>
        SingleComponentResponseOfDestinyItemPerksComponent()
          ..data = json['data'] == null
              ? null
              : DestinyItemPerksComponent.fromJson(
                  json['data'] as Map<String, dynamic>)
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic> _$SingleComponentResponseOfDestinyItemPerksComponentToJson(
        SingleComponentResponseOfDestinyItemPerksComponent instance) =>
    <String, dynamic>{
      'data': instance.data,
      'privacy': encodeComponentPrivacySetting(instance.privacy),
      'disabled': instance.disabled,
    };
