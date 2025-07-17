// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_post_game_carnage_report_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPostGameCarnageReportData _$DestinyPostGameCarnageReportDataFromJson(
        Map<String, dynamic> json) =>
    DestinyPostGameCarnageReportData()
      ..period = json['period'] as String?
      ..startingPhaseIndex = (json['startingPhaseIndex'] as num?)?.toInt()
      ..activityWasStartedFromBeginning =
          json['activityWasStartedFromBeginning'] as bool?
      ..activityDifficultyTier =
          (json['activityDifficultyTier'] as num?)?.toInt()
      ..selectedSkullHashes = (json['selectedSkullHashes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList()
      ..activityDetails = json['activityDetails'] == null
          ? null
          : DestinyHistoricalStatsActivity.fromJson(
              json['activityDetails'] as Map<String, dynamic>)
      ..entries = (json['entries'] as List<dynamic>?)
          ?.map((e) => DestinyPostGameCarnageReportEntry.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..teams = (json['teams'] as List<dynamic>?)
          ?.map((e) => DestinyPostGameCarnageReportTeamEntry.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DestinyPostGameCarnageReportDataToJson(
        DestinyPostGameCarnageReportData instance) =>
    <String, dynamic>{
      'period': instance.period,
      'startingPhaseIndex': instance.startingPhaseIndex,
      'activityWasStartedFromBeginning':
          instance.activityWasStartedFromBeginning,
      'activityDifficultyTier': instance.activityDifficultyTier,
      'selectedSkullHashes': instance.selectedSkullHashes,
      'activityDetails': instance.activityDetails?.toJson(),
      'entries': instance.entries?.map((e) => e.toJson()).toList(),
      'teams': instance.teams?.map((e) => e.toJson()).toList(),
    };
