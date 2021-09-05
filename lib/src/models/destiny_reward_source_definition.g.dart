// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_reward_source_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyRewardSourceDefinition _$DestinyRewardSourceDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyRewardSourceDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..category = _$enumDecodeNullable(
        _$DestinyRewardSourceCategoryEnumMap, json['category'],
        unknownValue: DestinyRewardSourceCategory.ProtectedInvalidEnumValue)
    ..hash = json['hash'] as int?
    ..index = json['index'] as int?
    ..redacted = json['redacted'] as bool?;
}

Map<String, dynamic> _$DestinyRewardSourceDefinitionToJson(
        DestinyRewardSourceDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'category': _$DestinyRewardSourceCategoryEnumMap[instance.category],
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

const _$DestinyRewardSourceCategoryEnumMap = {
  DestinyRewardSourceCategory.None: 0,
  DestinyRewardSourceCategory.Activity: 1,
  DestinyRewardSourceCategory.Vendor: 2,
  DestinyRewardSourceCategory.Aggregate: 3,
  DestinyRewardSourceCategory.ProtectedInvalidEnumValue: 999999999,
};
