// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_post_game_carnage_report_extended_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPostGameCarnageReportExtendedData
    _$DestinyPostGameCarnageReportExtendedDataFromJson(
        Map<String, dynamic> json) {
  return DestinyPostGameCarnageReportExtendedData()
    ..weapons = (json['weapons'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyHistoricalWeaponStats.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..values = (json['values'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyHistoricalStatsValue.fromJson(
                  e as Map<String, dynamic>)),
    );
}

Map<String, dynamic> _$DestinyPostGameCarnageReportExtendedDataToJson(
        DestinyPostGameCarnageReportExtendedData instance) =>
    <String, dynamic>{'weapons': instance.weapons, 'values': instance.values};
