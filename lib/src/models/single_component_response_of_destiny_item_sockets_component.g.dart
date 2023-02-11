// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_item_sockets_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyItemSocketsComponent
    _$SingleComponentResponseOfDestinyItemSocketsComponentFromJson(
            Map<String, dynamic> json) =>
        SingleComponentResponseOfDestinyItemSocketsComponent()
          ..data = json['data'] == null
              ? null
              : DestinyItemSocketsComponent.fromJson(
                  json['data'] as Map<String, dynamic>)
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
    _$SingleComponentResponseOfDestinyItemSocketsComponentToJson(
            SingleComponentResponseOfDestinyItemSocketsComponent instance) =>
        <String, dynamic>{
          'data': instance.data?.toJson(),
          'privacy': encodeComponentPrivacySetting(instance.privacy),
          'disabled': instance.disabled,
        };
