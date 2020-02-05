// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_historical_weapon_stats_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyHistoricalWeaponStatsData _$DestinyHistoricalWeaponStatsDataFromJson(
    Map<String, dynamic> json) {
  return DestinyHistoricalWeaponStatsData()
    ..weapons = (json['weapons'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyHistoricalWeaponStats.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DestinyHistoricalWeaponStatsDataToJson(
        DestinyHistoricalWeaponStatsData instance) =>
    <String, dynamic>{
      'weapons': instance.weapons,
    };
