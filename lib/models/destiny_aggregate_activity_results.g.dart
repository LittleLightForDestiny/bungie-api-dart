// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_aggregate_activity_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyAggregateActivityResults _$DestinyAggregateActivityResultsFromJson(
    Map<String, dynamic> json) {
  return DestinyAggregateActivityResults()
    ..activities = (json['activities'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyAggregateActivityStats.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DestinyAggregateActivityResultsToJson(
        DestinyAggregateActivityResults instance) =>
    <String, dynamic>{'activities': instance.activities};
