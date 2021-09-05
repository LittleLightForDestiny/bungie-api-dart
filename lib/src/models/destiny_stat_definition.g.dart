// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_stat_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyStatDefinition _$DestinyStatDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyStatDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..aggregationType = _$enumDecodeNullable(
        _$DestinyStatAggregationTypeEnumMap, json['aggregationType'],
        unknownValue: DestinyStatAggregationType.ProtectedInvalidEnumValue)
    ..hasComputedBlock = json['hasComputedBlock'] as bool?
    ..statCategory = _$enumDecodeNullable(
        _$DestinyStatCategoryEnumMap, json['statCategory'],
        unknownValue: DestinyStatCategory.ProtectedInvalidEnumValue)
    ..hash = json['hash'] as int?
    ..index = json['index'] as int?
    ..redacted = json['redacted'] as bool?;
}

Map<String, dynamic> _$DestinyStatDefinitionToJson(
        DestinyStatDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'aggregationType':
          _$DestinyStatAggregationTypeEnumMap[instance.aggregationType],
      'hasComputedBlock': instance.hasComputedBlock,
      'statCategory': _$DestinyStatCategoryEnumMap[instance.statCategory],
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

const _$DestinyStatAggregationTypeEnumMap = {
  DestinyStatAggregationType.CharacterAverage: 0,
  DestinyStatAggregationType.Character: 1,
  DestinyStatAggregationType.Item: 2,
  DestinyStatAggregationType.ProtectedInvalidEnumValue: 999999999,
};

const _$DestinyStatCategoryEnumMap = {
  DestinyStatCategory.Gameplay: 0,
  DestinyStatCategory.Weapon: 1,
  DestinyStatCategory.Defense: 2,
  DestinyStatCategory.Primary: 3,
  DestinyStatCategory.ProtectedInvalidEnumValue: 999999999,
};
