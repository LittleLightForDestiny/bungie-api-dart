// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_history_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityHistoryResults _$DestinyActivityHistoryResultsFromJson(
    Map<String, dynamic> json) {
  return DestinyActivityHistoryResults()
    ..activities = (json['activities'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyHistoricalStatsPeriodGroup.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DestinyActivityHistoryResultsToJson(
        DestinyActivityHistoryResults instance) =>
    <String, dynamic>{
      'activities': instance.activities,
    };
