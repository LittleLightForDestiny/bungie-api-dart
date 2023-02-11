// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_historical_stats_account_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyHistoricalStatsAccountResult
    _$DestinyHistoricalStatsAccountResultFromJson(Map<String, dynamic> json) =>
        DestinyHistoricalStatsAccountResult()
          ..mergedDeletedCharacters = json['mergedDeletedCharacters'] == null
              ? null
              : DestinyHistoricalStatsWithMerged.fromJson(
                  json['mergedDeletedCharacters'] as Map<String, dynamic>)
          ..mergedAllCharacters = json['mergedAllCharacters'] == null
              ? null
              : DestinyHistoricalStatsWithMerged.fromJson(
                  json['mergedAllCharacters'] as Map<String, dynamic>)
          ..characters = (json['characters'] as List<dynamic>?)
              ?.map((e) => DestinyHistoricalStatsPerCharacter.fromJson(
                  e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$DestinyHistoricalStatsAccountResultToJson(
        DestinyHistoricalStatsAccountResult instance) =>
    <String, dynamic>{
      'mergedDeletedCharacters': instance.mergedDeletedCharacters?.toJson(),
      'mergedAllCharacters': instance.mergedAllCharacters?.toJson(),
      'characters': instance.characters?.map((e) => e.toJson()).toList(),
    };
