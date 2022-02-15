// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_leaderboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyLeaderboard _$DestinyLeaderboardFromJson(Map<String, dynamic> json) =>
    DestinyLeaderboard()
      ..statId = json['statId'] as String?
      ..entries = (json['entries'] as List<dynamic>?)
          ?.map((e) =>
              DestinyLeaderboardEntry.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DestinyLeaderboardToJson(DestinyLeaderboard instance) =>
    <String, dynamic>{
      'statId': instance.statId,
      'entries': instance.entries,
    };
