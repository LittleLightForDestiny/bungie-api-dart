// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_objective_perk_entry_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyObjectivePerkEntryDefinition
    _$DestinyObjectivePerkEntryDefinitionFromJson(Map<String, dynamic> json) {
  return DestinyObjectivePerkEntryDefinition()
    ..perkHash = json['perkHash'] as int
    ..style = _$enumDecodeNullable(
        _$DestinyObjectiveGrantStyleEnumMap, json['style'],
        unknownValue: DestinyObjectiveGrantStyle.ProtectedInvalidEnumValue);
}

Map<String, dynamic> _$DestinyObjectivePerkEntryDefinitionToJson(
        DestinyObjectivePerkEntryDefinition instance) =>
    <String, dynamic>{
      'perkHash': instance.perkHash,
      'style': _$DestinyObjectiveGrantStyleEnumMap[instance.style],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$DestinyObjectiveGrantStyleEnumMap = {
  DestinyObjectiveGrantStyle.WhenIncomplete: 0,
  DestinyObjectiveGrantStyle.WhenComplete: 1,
  DestinyObjectiveGrantStyle.Always: 2,
  DestinyObjectiveGrantStyle.ProtectedInvalidEnumValue: 999999999,
};
