// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_historical_stats_value_pair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyHistoricalStatsValuePair _$DestinyHistoricalStatsValuePairFromJson(
        Map<String, dynamic> json) =>
    DestinyHistoricalStatsValuePair()
      ..value = (json['value'] as num?)?.toDouble()
      ..displayValue = json['displayValue'] as String?;

Map<String, dynamic> _$DestinyHistoricalStatsValuePairToJson(
        DestinyHistoricalStatsValuePair instance) =>
    <String, dynamic>{
      'value': instance.value,
      'displayValue': instance.displayValue,
    };
