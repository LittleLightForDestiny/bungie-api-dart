// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_record_interval_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyRecordIntervalBlock _$DestinyRecordIntervalBlockFromJson(
    Map<String, dynamic> json) {
  return DestinyRecordIntervalBlock()
    ..intervalObjectives = (json['intervalObjectives'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyRecordIntervalObjective.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..originalObjectiveArrayInsertionIndex =
        json['originalObjectiveArrayInsertionIndex'] as int;
}

Map<String, dynamic> _$DestinyRecordIntervalBlockToJson(
        DestinyRecordIntervalBlock instance) =>
    <String, dynamic>{
      'intervalObjectives': instance.intervalObjectives,
      'originalObjectiveArrayInsertionIndex':
          instance.originalObjectiveArrayInsertionIndex,
    };
