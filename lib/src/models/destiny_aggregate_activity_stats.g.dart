// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_aggregate_activity_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyAggregateActivityStats _$DestinyAggregateActivityStatsFromJson(
        Map<String, dynamic> json) =>
    DestinyAggregateActivityStats()
      ..activityHash = json['activityHash'] as int?
      ..values = (json['values'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, DestinyHistoricalStatsValue.fromJson(e as Map<String, dynamic>)),
      );

Map<String, dynamic> _$DestinyAggregateActivityStatsToJson(
        DestinyAggregateActivityStats instance) =>
    <String, dynamic>{
      'activityHash': instance.activityHash,
      'values': instance.values?.map((k, e) => MapEntry(k, e.toJson())),
    };
