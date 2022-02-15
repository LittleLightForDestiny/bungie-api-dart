// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_metrics_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyMetricsComponent
    _$SingleComponentResponseOfDestinyMetricsComponentFromJson(
            Map<String, dynamic> json) =>
        SingleComponentResponseOfDestinyMetricsComponent()
          ..data = json['data'] == null
              ? null
              : DestinyMetricsComponent.fromJson(
                  json['data'] as Map<String, dynamic>)
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic> _$SingleComponentResponseOfDestinyMetricsComponentToJson(
        SingleComponentResponseOfDestinyMetricsComponent instance) =>
    <String, dynamic>{
      'data': instance.data,
      'privacy': encodeComponentPrivacySetting(instance.privacy),
      'disabled': instance.disabled,
    };
