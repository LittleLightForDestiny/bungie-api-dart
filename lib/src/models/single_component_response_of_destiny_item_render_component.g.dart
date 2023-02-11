// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_item_render_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyItemRenderComponent
    _$SingleComponentResponseOfDestinyItemRenderComponentFromJson(
            Map<String, dynamic> json) =>
        SingleComponentResponseOfDestinyItemRenderComponent()
          ..data = json['data'] == null
              ? null
              : DestinyItemRenderComponent.fromJson(
                  json['data'] as Map<String, dynamic>)
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
    _$SingleComponentResponseOfDestinyItemRenderComponentToJson(
            SingleComponentResponseOfDestinyItemRenderComponent instance) =>
        <String, dynamic>{
          'data': instance.data?.toJson(),
          'privacy': encodeComponentPrivacySetting(instance.privacy),
          'disabled': instance.disabled,
        };
