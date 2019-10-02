// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_historical_stats_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyHistoricalStatsActivity _$DestinyHistoricalStatsActivityFromJson(
    Map<String, dynamic> json) {
  return DestinyHistoricalStatsActivity()
    ..referenceId = json['referenceId'] as int
    ..directorActivityHash = json['directorActivityHash'] as int
    ..instanceId = json['instanceId'] as String
    ..mode = json['mode'] as int
    ..modes = (json['modes'] as List)?.map((e) => e as int)?.toList()
    ..isPrivate = json['isPrivate'] as bool
    ..membershipType = json['membershipType'] as int;
}

Map<String, dynamic> _$DestinyHistoricalStatsActivityToJson(
        DestinyHistoricalStatsActivity instance) =>
    <String, dynamic>{
      'referenceId': instance.referenceId,
      'directorActivityHash': instance.directorActivityHash,
      'instanceId': instance.instanceId,
      'mode': instance.mode,
      'modes': instance.modes,
      'isPrivate': instance.isPrivate,
      'membershipType': instance.membershipType
    };
