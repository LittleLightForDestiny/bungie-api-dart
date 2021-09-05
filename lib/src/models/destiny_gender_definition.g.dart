// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_gender_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyGenderDefinition _$DestinyGenderDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyGenderDefinition()
    ..genderType = _$enumDecodeNullable(
        _$DestinyGenderEnumMap, json['genderType'],
        unknownValue: DestinyGender.ProtectedInvalidEnumValue)
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..hash = json['hash'] as int?
    ..index = json['index'] as int?
    ..redacted = json['redacted'] as bool?;
}

Map<String, dynamic> _$DestinyGenderDefinitionToJson(
        DestinyGenderDefinition instance) =>
    <String, dynamic>{
      'genderType': _$DestinyGenderEnumMap[instance.genderType],
      'displayProperties': instance.displayProperties,
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

const _$DestinyGenderEnumMap = {
  DestinyGender.Male: 0,
  DestinyGender.Female: 1,
  DestinyGender.Unknown: 2,
  DestinyGender.ProtectedInvalidEnumValue: 999999999,
};
