// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_historical_weapon_stats_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyHistoricalWeaponStatsData _$DestinyHistoricalWeaponStatsDataFromJson(
  Map<String, dynamic> json,
) =>
    DestinyHistoricalWeaponStatsData()
      ..weapons =
          (json['weapons'] as List<dynamic>?)
              ?.map(
                (e) => DestinyHistoricalWeaponStats.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList();

Map<String, dynamic> _$DestinyHistoricalWeaponStatsDataToJson(
  DestinyHistoricalWeaponStatsData instance,
) => <String, dynamic>{
  'weapons': instance.weapons?.map((e) => e.toJson()).toList(),
};
