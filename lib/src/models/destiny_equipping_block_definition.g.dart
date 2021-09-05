// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_equipping_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyEquippingBlockDefinition _$DestinyEquippingBlockDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyEquippingBlockDefinition()
    ..gearsetItemHash = json['gearsetItemHash'] as int?
    ..uniqueLabel = json['uniqueLabel'] as String?
    ..uniqueLabelHash = json['uniqueLabelHash'] as int?
    ..equipmentSlotTypeHash = json['equipmentSlotTypeHash'] as int?
    ..attributes = json['attributes'] == null
        ? null
        : EquippingItemBlockAttributes.fromJson(json['attributes'] as int)
    ..ammoType = _$enumDecodeNullable(
        _$DestinyAmmunitionTypeEnumMap, json['ammoType'],
        unknownValue: DestinyAmmunitionType.ProtectedInvalidEnumValue)
    ..displayStrings = (json['displayStrings'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList();
}

Map<String, dynamic> _$DestinyEquippingBlockDefinitionToJson(
        DestinyEquippingBlockDefinition instance) =>
    <String, dynamic>{
      'gearsetItemHash': instance.gearsetItemHash,
      'uniqueLabel': instance.uniqueLabel,
      'uniqueLabelHash': instance.uniqueLabelHash,
      'equipmentSlotTypeHash': instance.equipmentSlotTypeHash,
      'attributes': instance.attributes,
      'ammoType': _$DestinyAmmunitionTypeEnumMap[instance.ammoType],
      'displayStrings': instance.displayStrings,
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

const _$DestinyAmmunitionTypeEnumMap = {
  DestinyAmmunitionType.None: 0,
  DestinyAmmunitionType.Primary: 1,
  DestinyAmmunitionType.Special: 2,
  DestinyAmmunitionType.Heavy: 3,
  DestinyAmmunitionType.Unknown: 4,
  DestinyAmmunitionType.ProtectedInvalidEnumValue: 999999999,
};
