// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_post_game_carnage_report_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPostGameCarnageReportData _$DestinyPostGameCarnageReportDataFromJson(
    Map<String, dynamic> json) {
  return DestinyPostGameCarnageReportData()
    ..period = json['period'] as String
    ..startingPhaseIndex = json['startingPhaseIndex'] as int
    ..activityDetails = json['activityDetails'] == null
        ? null
        : DestinyHistoricalStatsActivity.fromJson(
            json['activityDetails'] as Map<String, dynamic>)
    ..entries = (json['entries'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyPostGameCarnageReportEntry.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..teams = (json['teams'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyPostGameCarnageReportTeamEntry.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DestinyPostGameCarnageReportDataToJson(
        DestinyPostGameCarnageReportData instance) =>
    <String, dynamic>{
      'period': instance.period,
      'startingPhaseIndex': instance.startingPhaseIndex,
      'activityDetails': instance.activityDetails,
      'entries': instance.entries,
      'teams': instance.teams
    };
