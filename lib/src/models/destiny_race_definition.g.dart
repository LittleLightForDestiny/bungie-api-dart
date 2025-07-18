// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_race_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyRaceDefinition _$DestinyRaceDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyRaceDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..raceType = decodeDestinyRace(json['raceType'])
      ..genderedRaceNames = (json['genderedRaceNames'] as Map<String, dynamic>?)
          ?.map((k, e) => MapEntry(k, e as String))
      ..genderedRaceNamesByGenderHash = (json['genderedRaceNamesByGenderHash']
              as Map<String, dynamic>?)
          ?.map((k, e) => MapEntry(k, e as String))
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyRaceDefinitionToJson(
  DestinyRaceDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'raceType': encodeDestinyRace(instance.raceType),
  'genderedRaceNames': instance.genderedRaceNames,
  'genderedRaceNamesByGenderHash': instance.genderedRaceNamesByGenderHash,
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
