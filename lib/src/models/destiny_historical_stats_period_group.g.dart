// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_historical_stats_period_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyHistoricalStatsPeriodGroup _$DestinyHistoricalStatsPeriodGroupFromJson(
    Map<String, dynamic> json) {
  return DestinyHistoricalStatsPeriodGroup()
    ..period = json['period'] as String
    ..activityDetails = json['activityDetails'] == null
        ? null
        : DestinyHistoricalStatsActivity.fromJson(
            json['activityDetails'] as Map<String, dynamic>)
    ..values = (json['values'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyHistoricalStatsValue.fromJson(
                  e as Map<String, dynamic>)),
    );
}

Map<String, dynamic> _$DestinyHistoricalStatsPeriodGroupToJson(
        DestinyHistoricalStatsPeriodGroup instance) =>
    <String, dynamic>{
      'period': instance.period,
      'activityDetails': instance.activityDetails,
      'values': instance.values,
    };
