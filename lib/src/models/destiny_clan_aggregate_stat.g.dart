// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_clan_aggregate_stat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyClanAggregateStat _$DestinyClanAggregateStatFromJson(
    Map<String, dynamic> json) {
  return DestinyClanAggregateStat()
    ..mode = json['mode'] as int
    ..statId = json['statId'] as String
    ..value = json['value'] == null
        ? null
        : DestinyHistoricalStatsValue.fromJson(
            json['value'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DestinyClanAggregateStatToJson(
        DestinyClanAggregateStat instance) =>
    <String, dynamic>{
      'mode': instance.mode,
      'statId': instance.statId,
      'value': instance.value
    };
