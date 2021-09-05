// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_objective_stat_entry_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyObjectiveStatEntryDefinition
    _$DestinyObjectiveStatEntryDefinitionFromJson(Map<String, dynamic> json) {
  return DestinyObjectiveStatEntryDefinition()
    ..stat = json['stat'] == null
        ? null
        : DestinyItemInvestmentStatDefinition.fromJson(
            json['stat'] as Map<String, dynamic>)
    ..style = _$enumDecodeNullable(
        _$DestinyObjectiveGrantStyleEnumMap, json['style'],
        unknownValue: DestinyObjectiveGrantStyle.ProtectedInvalidEnumValue);
}

Map<String, dynamic> _$DestinyObjectiveStatEntryDefinitionToJson(
        DestinyObjectiveStatEntryDefinition instance) =>
    <String, dynamic>{
      'stat': instance.stat,
      'style': _$DestinyObjectiveGrantStyleEnumMap[instance.style],
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

const _$DestinyObjectiveGrantStyleEnumMap = {
  DestinyObjectiveGrantStyle.WhenIncomplete: 0,
  DestinyObjectiveGrantStyle.WhenComplete: 1,
  DestinyObjectiveGrantStyle.Always: 2,
  DestinyObjectiveGrantStyle.ProtectedInvalidEnumValue: 999999999,
};
