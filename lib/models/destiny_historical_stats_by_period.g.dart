// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_historical_stats_by_period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyHistoricalStatsByPeriod _$DestinyHistoricalStatsByPeriodFromJson(
    Map<String, dynamic> json) {
  return DestinyHistoricalStatsByPeriod()
    ..allTime = (json['allTime'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyHistoricalStatsValue.fromJson(
                  e as Map<String, dynamic>)),
    )
    ..allTimeTier1 = (json['allTimeTier1'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyHistoricalStatsValue.fromJson(
                  e as Map<String, dynamic>)),
    )
    ..allTimeTier2 = (json['allTimeTier2'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyHistoricalStatsValue.fromJson(
                  e as Map<String, dynamic>)),
    )
    ..allTimeTier3 = (json['allTimeTier3'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyHistoricalStatsValue.fromJson(
                  e as Map<String, dynamic>)),
    )
    ..daily = (json['daily'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyHistoricalStatsPeriodGroup.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..monthly = (json['monthly'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyHistoricalStatsPeriodGroup.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DestinyHistoricalStatsByPeriodToJson(
        DestinyHistoricalStatsByPeriod instance) =>
    <String, dynamic>{
      'allTime': instance.allTime,
      'allTimeTier1': instance.allTimeTier1,
      'allTimeTier2': instance.allTimeTier2,
      'allTimeTier3': instance.allTimeTier3,
      'daily': instance.daily,
      'monthly': instance.monthly
    };
