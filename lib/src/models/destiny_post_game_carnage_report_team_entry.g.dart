// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_post_game_carnage_report_team_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPostGameCarnageReportTeamEntry
    _$DestinyPostGameCarnageReportTeamEntryFromJson(Map<String, dynamic> json) {
  return DestinyPostGameCarnageReportTeamEntry()
    ..teamId = json['teamId'] as int
    ..standing = json['standing'] == null
        ? null
        : DestinyHistoricalStatsValue.fromJson(
            json['standing'] as Map<String, dynamic>)
    ..score = json['score'] == null
        ? null
        : DestinyHistoricalStatsValue.fromJson(
            json['score'] as Map<String, dynamic>)
    ..teamName = json['teamName'] as String;
}

Map<String, dynamic> _$DestinyPostGameCarnageReportTeamEntryToJson(
        DestinyPostGameCarnageReportTeamEntry instance) =>
    <String, dynamic>{
      'teamId': instance.teamId,
      'standing': instance.standing,
      'score': instance.score,
      'teamName': instance.teamName,
    };
