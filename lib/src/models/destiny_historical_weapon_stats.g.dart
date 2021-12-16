// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_historical_weapon_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyHistoricalWeaponStats _$DestinyHistoricalWeaponStatsFromJson(
    Map<String, dynamic> json) {
  return DestinyHistoricalWeaponStats()
    ..referenceId = json['referenceId'] as int?
    ..values = (json['values'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          k, DestinyHistoricalStatsValue.fromJson(e as Map<String, dynamic>)),
    );
}

Map<String, dynamic> _$DestinyHistoricalWeaponStatsToJson(
        DestinyHistoricalWeaponStats instance) =>
    <String, dynamic>{
      'referenceId': instance.referenceId,
      'values': instance.values,
    };
