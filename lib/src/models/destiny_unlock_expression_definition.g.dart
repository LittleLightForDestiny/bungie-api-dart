// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_unlock_expression_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyUnlockExpressionDefinition _$DestinyUnlockExpressionDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyUnlockExpressionDefinition()
    ..scope = _$enumDecodeNullable(_$DestinyGatingScopeEnumMap, json['scope'],
        unknownValue: DestinyGatingScope.ProtectedInvalidEnumValue);
}

Map<String, dynamic> _$DestinyUnlockExpressionDefinitionToJson(
        DestinyUnlockExpressionDefinition instance) =>
    <String, dynamic>{
      'scope': _$DestinyGatingScopeEnumMap[instance.scope],
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

const _$DestinyGatingScopeEnumMap = {
  DestinyGatingScope.None: 0,
  DestinyGatingScope.Global: 1,
  DestinyGatingScope.Clan: 2,
  DestinyGatingScope.Profile: 3,
  DestinyGatingScope.Character: 4,
  DestinyGatingScope.Item: 5,
  DestinyGatingScope.AssumedWorstCase: 6,
  DestinyGatingScope.ProtectedInvalidEnumValue: 999999999,
};
