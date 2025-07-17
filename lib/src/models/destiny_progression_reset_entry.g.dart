// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_progression_reset_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProgressionResetEntry _$DestinyProgressionResetEntryFromJson(
        Map<String, dynamic> json) =>
    DestinyProgressionResetEntry()
      ..season = (json['season'] as num?)?.toInt()
      ..resets = (json['resets'] as num?)?.toInt();

Map<String, dynamic> _$DestinyProgressionResetEntryToJson(
        DestinyProgressionResetEntry instance) =>
    <String, dynamic>{
      'season': instance.season,
      'resets': instance.resets,
    };
