// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_perk_entry_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemPerkEntryDefinition _$DestinyItemPerkEntryDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyItemPerkEntryDefinition()
    ..requirementDisplayString = json['requirementDisplayString'] as String?
    ..perkHash = json['perkHash'] as int?
    ..perkVisibility = _$enumDecodeNullable(
        _$ItemPerkVisibilityEnumMap, json['perkVisibility'],
        unknownValue: ItemPerkVisibility.ProtectedInvalidEnumValue);
}

Map<String, dynamic> _$DestinyItemPerkEntryDefinitionToJson(
        DestinyItemPerkEntryDefinition instance) =>
    <String, dynamic>{
      'requirementDisplayString': instance.requirementDisplayString,
      'perkHash': instance.perkHash,
      'perkVisibility': _$ItemPerkVisibilityEnumMap[instance.perkVisibility],
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

const _$ItemPerkVisibilityEnumMap = {
  ItemPerkVisibility.Visible: 0,
  ItemPerkVisibility.Disabled: 1,
  ItemPerkVisibility.Hidden: 2,
  ItemPerkVisibility.ProtectedInvalidEnumValue: 999999999,
};
