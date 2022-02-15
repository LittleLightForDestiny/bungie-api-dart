// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_item_reusable_plugs_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyItemReusablePlugsComponent
    _$SingleComponentResponseOfDestinyItemReusablePlugsComponentFromJson(
            Map<String, dynamic> json) =>
        SingleComponentResponseOfDestinyItemReusablePlugsComponent()
          ..data = json['data'] == null
              ? null
              : DestinyItemReusablePlugsComponent.fromJson(
                  json['data'] as Map<String, dynamic>)
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String,
    dynamic> _$SingleComponentResponseOfDestinyItemReusablePlugsComponentToJson(
        SingleComponentResponseOfDestinyItemReusablePlugsComponent instance) =>
    <String, dynamic>{
      'data': instance.data,
      'privacy': encodeComponentPrivacySetting(instance.privacy),
      'disabled': instance.disabled,
    };
