// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_aggregate_activity_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyAggregateActivityStats _$DestinyAggregateActivityStatsFromJson(
    Map<String, dynamic> json) {
  return DestinyAggregateActivityStats()
    ..activityHash = json['activityHash'] as int
    ..values = (json['values'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyHistoricalStatsValue.fromJson(
                  e as Map<String, dynamic>)),
    );
}

Map<String, dynamic> _$DestinyAggregateActivityStatsToJson(
        DestinyAggregateActivityStats instance) =>
    <String, dynamic>{
      'activityHash': instance.activityHash,
      'values': instance.values,
    };
