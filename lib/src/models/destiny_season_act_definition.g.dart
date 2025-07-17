// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_season_act_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinySeasonActDefinition _$DestinySeasonActDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinySeasonActDefinition()
      ..displayName = json['displayName'] as String?
      ..startTime = json['startTime'] as String?
      ..rankCount = (json['rankCount'] as num?)?.toInt();

Map<String, dynamic> _$DestinySeasonActDefinitionToJson(
  DestinySeasonActDefinition instance,
) => <String, dynamic>{
  'displayName': instance.displayName,
  'startTime': instance.startTime,
  'rankCount': instance.rankCount,
};
