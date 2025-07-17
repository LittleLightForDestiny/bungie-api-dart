// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_record_interval_objective.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyRecordIntervalObjective _$DestinyRecordIntervalObjectiveFromJson(
        Map<String, dynamic> json) =>
    DestinyRecordIntervalObjective()
      ..intervalObjectiveHash = (json['intervalObjectiveHash'] as num?)?.toInt()
      ..intervalScoreValue = (json['intervalScoreValue'] as num?)?.toInt();

Map<String, dynamic> _$DestinyRecordIntervalObjectiveToJson(
        DestinyRecordIntervalObjective instance) =>
    <String, dynamic>{
      'intervalObjectiveHash': instance.intervalObjectiveHash,
      'intervalScoreValue': instance.intervalScoreValue,
    };
