// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_perk_entry_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemPerkEntryDefinition _$DestinyItemPerkEntryDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyItemPerkEntryDefinition()
    ..requirementDisplayString = json['requirementDisplayString'] as String
    ..perkHash = json['perkHash'] as int
    ..perkVisibility = _$enumDecodeNullable(
        _$ItemPerkVisibilityEnumMap, json['perkVisibility'],
        unknownValue: ItemPerkVisibility.Visible);
}

Map<String, dynamic> _$DestinyItemPerkEntryDefinitionToJson(
        DestinyItemPerkEntryDefinition instance) =>
    <String, dynamic>{
      'requirementDisplayString': instance.requirementDisplayString,
      'perkHash': instance.perkHash,
      'perkVisibility': _$ItemPerkVisibilityEnumMap[instance.perkVisibility],
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

const _$ItemPerkVisibilityEnumMap = {
  ItemPerkVisibility.Visible: 0,
  ItemPerkVisibility.Disabled: 1,
  ItemPerkVisibility.Hidden: 2,
};
