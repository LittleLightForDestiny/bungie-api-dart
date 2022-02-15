// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_historical_stats_with_merged.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyHistoricalStatsWithMerged _$DestinyHistoricalStatsWithMergedFromJson(
        Map<String, dynamic> json) =>
    DestinyHistoricalStatsWithMerged()
      ..results = (json['results'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k,
            DestinyHistoricalStatsByPeriod.fromJson(e as Map<String, dynamic>)),
      )
      ..merged = json['merged'] == null
          ? null
          : DestinyHistoricalStatsByPeriod.fromJson(
              json['merged'] as Map<String, dynamic>);

Map<String, dynamic> _$DestinyHistoricalStatsWithMergedToJson(
        DestinyHistoricalStatsWithMerged instance) =>
    <String, dynamic>{
      'results': instance.results,
      'merged': instance.merged,
    };
