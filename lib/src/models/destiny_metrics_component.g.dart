// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_metrics_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMetricsComponent _$DestinyMetricsComponentFromJson(
    Map<String, dynamic> json) {
  return DestinyMetricsComponent()
    ..metrics = (json['metrics'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          k, DestinyMetricComponent.fromJson(e as Map<String, dynamic>)),
    )
    ..metricsRootNodeHash = json['metricsRootNodeHash'] as int?;
}

Map<String, dynamic> _$DestinyMetricsComponentToJson(
        DestinyMetricsComponent instance) =>
    <String, dynamic>{
      'metrics': instance.metrics,
      'metricsRootNodeHash': instance.metricsRootNodeHash,
    };
