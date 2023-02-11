// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_historical_stats_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyHistoricalStatsValue _$DestinyHistoricalStatsValueFromJson(
        Map<String, dynamic> json) =>
    DestinyHistoricalStatsValue()
      ..statId = json['statId'] as String?
      ..basic = json['basic'] == null
          ? null
          : DestinyHistoricalStatsValuePair.fromJson(
              json['basic'] as Map<String, dynamic>)
      ..pga = json['pga'] == null
          ? null
          : DestinyHistoricalStatsValuePair.fromJson(
              json['pga'] as Map<String, dynamic>)
      ..weighted = json['weighted'] == null
          ? null
          : DestinyHistoricalStatsValuePair.fromJson(
              json['weighted'] as Map<String, dynamic>)
      ..activityId = json['activityId'] as String?;

Map<String, dynamic> _$DestinyHistoricalStatsValueToJson(
        DestinyHistoricalStatsValue instance) =>
    <String, dynamic>{
      'statId': instance.statId,
      'basic': instance.basic?.toJson(),
      'pga': instance.pga?.toJson(),
      'weighted': instance.weighted?.toJson(),
      'activityId': instance.activityId,
    };
