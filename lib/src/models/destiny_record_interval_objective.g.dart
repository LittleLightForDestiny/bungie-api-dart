// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_record_interval_objective.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyRecordIntervalObjective _$DestinyRecordIntervalObjectiveFromJson(
    Map<String, dynamic> json) {
  return DestinyRecordIntervalObjective()
    ..intervalObjectiveHash = json['intervalObjectiveHash'] as int?
    ..intervalScoreValue = json['intervalScoreValue'] as int?;
}

Map<String, dynamic> _$DestinyRecordIntervalObjectiveToJson(
        DestinyRecordIntervalObjective instance) =>
    <String, dynamic>{
      'intervalObjectiveHash': instance.intervalObjectiveHash,
      'intervalScoreValue': instance.intervalScoreValue,
    };
