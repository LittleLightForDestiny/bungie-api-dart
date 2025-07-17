// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_leaderboard_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyLeaderboardEntry _$DestinyLeaderboardEntryFromJson(
  Map<String, dynamic> json,
) =>
    DestinyLeaderboardEntry()
      ..rank = (json['rank'] as num?)?.toInt()
      ..player =
          json['player'] == null
              ? null
              : DestinyPlayer.fromJson(json['player'] as Map<String, dynamic>)
      ..characterId = json['characterId'] as String?
      ..value =
          json['value'] == null
              ? null
              : DestinyHistoricalStatsValue.fromJson(
                json['value'] as Map<String, dynamic>,
              );

Map<String, dynamic> _$DestinyLeaderboardEntryToJson(
  DestinyLeaderboardEntry instance,
) => <String, dynamic>{
  'rank': instance.rank,
  'player': instance.player?.toJson(),
  'characterId': instance.characterId,
  'value': instance.value?.toJson(),
};
