// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_historical_stats_by_period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyHistoricalStatsByPeriod _$DestinyHistoricalStatsByPeriodFromJson(
        Map<String, dynamic> json) =>
    DestinyHistoricalStatsByPeriod()
      ..allTime = (json['allTime'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, DestinyHistoricalStatsValue.fromJson(e as Map<String, dynamic>)),
      )
      ..allTimeTier1 = (json['allTimeTier1'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, DestinyHistoricalStatsValue.fromJson(e as Map<String, dynamic>)),
      )
      ..allTimeTier2 = (json['allTimeTier2'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, DestinyHistoricalStatsValue.fromJson(e as Map<String, dynamic>)),
      )
      ..allTimeTier3 = (json['allTimeTier3'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, DestinyHistoricalStatsValue.fromJson(e as Map<String, dynamic>)),
      )
      ..daily = (json['daily'] as List<dynamic>?)
          ?.map((e) => DestinyHistoricalStatsPeriodGroup.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..monthly = (json['monthly'] as List<dynamic>?)
          ?.map((e) => DestinyHistoricalStatsPeriodGroup.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DestinyHistoricalStatsByPeriodToJson(
        DestinyHistoricalStatsByPeriod instance) =>
    <String, dynamic>{
      'allTime': instance.allTime?.map((k, e) => MapEntry(k, e.toJson())),
      'allTimeTier1':
          instance.allTimeTier1?.map((k, e) => MapEntry(k, e.toJson())),
      'allTimeTier2':
          instance.allTimeTier2?.map((k, e) => MapEntry(k, e.toJson())),
      'allTimeTier3':
          instance.allTimeTier3?.map((k, e) => MapEntry(k, e.toJson())),
      'daily': instance.daily?.map((e) => e.toJson()).toList(),
      'monthly': instance.monthly?.map((e) => e.toJson()).toList(),
    };
