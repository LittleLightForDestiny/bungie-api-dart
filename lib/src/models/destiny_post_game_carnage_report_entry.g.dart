// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_post_game_carnage_report_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPostGameCarnageReportEntry _$DestinyPostGameCarnageReportEntryFromJson(
    Map<String, dynamic> json) {
  return DestinyPostGameCarnageReportEntry()
    ..standing = json['standing'] as int?
    ..score = json['score'] == null
        ? null
        : DestinyHistoricalStatsValue.fromJson(
            json['score'] as Map<String, dynamic>)
    ..player = json['player'] == null
        ? null
        : DestinyPlayer.fromJson(json['player'] as Map<String, dynamic>)
    ..characterId = json['characterId'] as String?
    ..values = (json['values'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          k, DestinyHistoricalStatsValue.fromJson(e as Map<String, dynamic>)),
    )
    ..extended = json['extended'] == null
        ? null
        : DestinyPostGameCarnageReportExtendedData.fromJson(
            json['extended'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DestinyPostGameCarnageReportEntryToJson(
        DestinyPostGameCarnageReportEntry instance) =>
    <String, dynamic>{
      'standing': instance.standing,
      'score': instance.score,
      'player': instance.player,
      'characterId': instance.characterId,
      'values': instance.values,
      'extended': instance.extended,
    };
