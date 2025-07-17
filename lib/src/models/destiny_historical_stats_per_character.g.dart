// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_historical_stats_per_character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyHistoricalStatsPerCharacter _$DestinyHistoricalStatsPerCharacterFromJson(
  Map<String, dynamic> json,
) =>
    DestinyHistoricalStatsPerCharacter()
      ..characterId = json['characterId'] as String?
      ..deleted = json['deleted'] as bool?
      ..results = (json['results'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          DestinyHistoricalStatsByPeriod.fromJson(e as Map<String, dynamic>),
        ),
      )
      ..merged =
          json['merged'] == null
              ? null
              : DestinyHistoricalStatsByPeriod.fromJson(
                json['merged'] as Map<String, dynamic>,
              );

Map<String, dynamic> _$DestinyHistoricalStatsPerCharacterToJson(
  DestinyHistoricalStatsPerCharacter instance,
) => <String, dynamic>{
  'characterId': instance.characterId,
  'deleted': instance.deleted,
  'results': instance.results?.map((k, e) => MapEntry(k, e.toJson())),
  'merged': instance.merged?.toJson(),
};
