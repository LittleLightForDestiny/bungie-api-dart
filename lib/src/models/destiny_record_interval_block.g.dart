// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_record_interval_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyRecordIntervalBlock _$DestinyRecordIntervalBlockFromJson(
        Map<String, dynamic> json) =>
    DestinyRecordIntervalBlock()
      ..intervalObjectives = (json['intervalObjectives'] as List<dynamic>?)
          ?.map((e) => DestinyRecordIntervalObjective.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..intervalRewards = (json['intervalRewards'] as List<dynamic>?)
          ?.map((e) =>
              DestinyRecordIntervalRewards.fromJson(e as Map<String, dynamic>))
          .toList()
      ..originalObjectiveArrayInsertionIndex =
          json['originalObjectiveArrayInsertionIndex'] as int?;

Map<String, dynamic> _$DestinyRecordIntervalBlockToJson(
        DestinyRecordIntervalBlock instance) =>
    <String, dynamic>{
      'intervalObjectives':
          instance.intervalObjectives?.map((e) => e.toJson()).toList(),
      'intervalRewards':
          instance.intervalRewards?.map((e) => e.toJson()).toList(),
      'originalObjectiveArrayInsertionIndex':
          instance.originalObjectiveArrayInsertionIndex,
    };
