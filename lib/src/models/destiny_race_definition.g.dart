// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_race_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyRaceDefinition _$DestinyRaceDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyRaceDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..raceType = _$enumDecodeNullable(_$DestinyRaceEnumMap, json['raceType'],
        unknownValue: DestinyRace.ProtectedInvalidEnumValue)
    ..genderedRaceNames =
        (json['genderedRaceNames'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    )
    ..genderedRaceNamesByGenderHash =
        (json['genderedRaceNamesByGenderHash'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    )
    ..hash = json['hash'] as int?
    ..index = json['index'] as int?
    ..redacted = json['redacted'] as bool?;
}

Map<String, dynamic> _$DestinyRaceDefinitionToJson(
        DestinyRaceDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'raceType': _$DestinyRaceEnumMap[instance.raceType],
      'genderedRaceNames': instance.genderedRaceNames,
      'genderedRaceNamesByGenderHash': instance.genderedRaceNamesByGenderHash,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$DestinyRaceEnumMap = {
  DestinyRace.Human: 0,
  DestinyRace.Awoken: 1,
  DestinyRace.Exo: 2,
  DestinyRace.Unknown: 3,
  DestinyRace.ProtectedInvalidEnumValue: 999999999,
};
