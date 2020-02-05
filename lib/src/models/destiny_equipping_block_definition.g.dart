// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_equipping_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyEquippingBlockDefinition _$DestinyEquippingBlockDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyEquippingBlockDefinition()
    ..gearsetItemHash = json['gearsetItemHash'] as int
    ..uniqueLabel = json['uniqueLabel'] as String
    ..uniqueLabelHash = json['uniqueLabelHash'] as int
    ..equipmentSlotTypeHash = json['equipmentSlotTypeHash'] as int
    ..attributes = json['attributes'] == null
        ? null
        : EquippingItemBlockAttributes.fromJson(json['attributes'] as int)
    ..ammoType = _$enumDecodeNullable(
        _$DestinyAmmunitionTypeEnumMap, json['ammoType'],
        unknownValue: DestinyAmmunitionType.None)
    ..displayStrings =
        (json['displayStrings'] as List)?.map((e) => e as String)?.toList();
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

const _$DestinyAmmunitionTypeEnumMap = {
  DestinyAmmunitionType.None: 0,
  DestinyAmmunitionType.Primary: 1,
  DestinyAmmunitionType.Special: 2,
  DestinyAmmunitionType.Heavy: 3,
  DestinyAmmunitionType.Unknown: 4,
};
