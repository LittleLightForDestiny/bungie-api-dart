// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_inventory_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyInventoryComponent
    _$SingleComponentResponseOfDestinyInventoryComponentFromJson(
            Map<String, dynamic> json) =>
        SingleComponentResponseOfDestinyInventoryComponent()
          ..data = json['data'] == null
              ? null
              : DestinyInventoryComponent.fromJson(
                  json['data'] as Map<String, dynamic>)
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic> _$SingleComponentResponseOfDestinyInventoryComponentToJson(
        SingleComponentResponseOfDestinyInventoryComponent instance) =>
    <String, dynamic>{
      'data': instance.data,
      'privacy': encodeComponentPrivacySetting(instance.privacy),
      'disabled': instance.disabled,
    };
