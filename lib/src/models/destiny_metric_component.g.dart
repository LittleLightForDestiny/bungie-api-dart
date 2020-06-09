// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_metric_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMetricComponent _$DestinyMetricComponentFromJson(
    Map<String, dynamic> json) {
  return DestinyMetricComponent()
    ..invisible = json['invisible'] as bool
    ..objectiveProgress = json['objectiveProgress'] == null
        ? null
        : DestinyObjectiveProgress.fromJson(
            json['objectiveProgress'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DestinyMetricComponentToJson(
        DestinyMetricComponent instance) =>
    <String, dynamic>{
      'invisible': instance.invisible,
      'objectiveProgress': instance.objectiveProgress,
    };
