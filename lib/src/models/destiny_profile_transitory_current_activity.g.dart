// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_profile_transitory_current_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProfileTransitoryCurrentActivity
    _$DestinyProfileTransitoryCurrentActivityFromJson(
        Map<String, dynamic> json) {
  return DestinyProfileTransitoryCurrentActivity()
    ..startTime = json['startTime'] as String
    ..endTime = json['endTime'] as String
    ..score = (json['score'] as num)?.toDouble()
    ..highestOpposingFactionScore =
        (json['highestOpposingFactionScore'] as num)?.toDouble()
    ..numberOfOpponents = json['numberOfOpponents'] as int
    ..numberOfPlayers = json['numberOfPlayers'] as int;
}

Map<String, dynamic> _$DestinyProfileTransitoryCurrentActivityToJson(
        DestinyProfileTransitoryCurrentActivity instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'score': instance.score,
      'highestOpposingFactionScore': instance.highestOpposingFactionScore,
      'numberOfOpponents': instance.numberOfOpponents,
      'numberOfPlayers': instance.numberOfPlayers
    };
