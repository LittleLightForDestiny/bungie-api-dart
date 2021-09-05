// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_breaker_type_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyBreakerTypeDefinition _$DestinyBreakerTypeDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyBreakerTypeDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..enumValue = _$enumDecodeNullable(
        _$DestinyBreakerTypeEnumMap, json['enumValue'],
        unknownValue: DestinyBreakerType.ProtectedInvalidEnumValue)
    ..hash = json['hash'] as int?
    ..index = json['index'] as int?
    ..redacted = json['redacted'] as bool?;
}

Map<String, dynamic> _$DestinyBreakerTypeDefinitionToJson(
        DestinyBreakerTypeDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'enumValue': _$DestinyBreakerTypeEnumMap[instance.enumValue],
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

const _$DestinyBreakerTypeEnumMap = {
  DestinyBreakerType.None: 0,
  DestinyBreakerType.ShieldPiercing: 1,
  DestinyBreakerType.Disruption: 2,
  DestinyBreakerType.Stagger: 3,
  DestinyBreakerType.ProtectedInvalidEnumValue: 999999999,
};
