// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_duration_estimate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityDurationEstimate _$DestinyActivityDurationEstimateFromJson(
  Map<String, dynamic> json,
) => DestinyActivityDurationEstimate()
  ..durationPipsFilledCount = (json['durationPipsFilledCount'] as num?)?.toInt()
  ..durationPipsTotalCount = (json['durationPipsTotalCount'] as num?)?.toInt()
  ..durationEstimateText = json['durationEstimateText'] as String?;

Map<String, dynamic> _$DestinyActivityDurationEstimateToJson(
  DestinyActivityDurationEstimate instance,
) => <String, dynamic>{
  'durationPipsFilledCount': instance.durationPipsFilledCount,
  'durationPipsTotalCount': instance.durationPipsTotalCount,
  'durationEstimateText': instance.durationEstimateText,
};
