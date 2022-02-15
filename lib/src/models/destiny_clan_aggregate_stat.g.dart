// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_clan_aggregate_stat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyClanAggregateStat _$DestinyClanAggregateStatFromJson(
        Map<String, dynamic> json) =>
    DestinyClanAggregateStat()
      ..mode = decodeDestinyActivityModeType(json['mode'])
      ..statId = json['statId'] as String?
      ..value = json['value'] == null
          ? null
          : DestinyHistoricalStatsValue.fromJson(
              json['value'] as Map<String, dynamic>);

Map<String, dynamic> _$DestinyClanAggregateStatToJson(
        DestinyClanAggregateStat instance) =>
    <String, dynamic>{
      'mode': encodeDestinyActivityModeType(instance.mode),
      'statId': instance.statId,
      'value': instance.value,
    };
