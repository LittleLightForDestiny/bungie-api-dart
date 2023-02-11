// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_plug_sets_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyPlugSetsComponent
    _$SingleComponentResponseOfDestinyPlugSetsComponentFromJson(
            Map<String, dynamic> json) =>
        SingleComponentResponseOfDestinyPlugSetsComponent()
          ..data = json['data'] == null
              ? null
              : DestinyPlugSetsComponent.fromJson(
                  json['data'] as Map<String, dynamic>)
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic> _$SingleComponentResponseOfDestinyPlugSetsComponentToJson(
        SingleComponentResponseOfDestinyPlugSetsComponent instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'privacy': encodeComponentPrivacySetting(instance.privacy),
      'disabled': instance.disabled,
    };
