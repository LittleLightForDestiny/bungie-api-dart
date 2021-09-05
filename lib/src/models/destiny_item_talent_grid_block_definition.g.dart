// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_talent_grid_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemTalentGridBlockDefinition
    _$DestinyItemTalentGridBlockDefinitionFromJson(Map<String, dynamic> json) {
  return DestinyItemTalentGridBlockDefinition()
    ..talentGridHash = json['talentGridHash'] as int?
    ..itemDetailString = json['itemDetailString'] as String?
    ..buildName = json['buildName'] as String?
    ..hudDamageType = _$enumDecodeNullable(
        _$DamageTypeEnumMap, json['hudDamageType'],
        unknownValue: DamageType.ProtectedInvalidEnumValue)
    ..hudIcon = json['hudIcon'] as String?;
}

Map<String, dynamic> _$DestinyItemTalentGridBlockDefinitionToJson(
        DestinyItemTalentGridBlockDefinition instance) =>
    <String, dynamic>{
      'talentGridHash': instance.talentGridHash,
      'itemDetailString': instance.itemDetailString,
      'buildName': instance.buildName,
      'hudDamageType': _$DamageTypeEnumMap[instance.hudDamageType],
      'hudIcon': instance.hudIcon,
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

const _$DamageTypeEnumMap = {
  DamageType.None: 0,
  DamageType.Kinetic: 1,
  DamageType.Arc: 2,
  DamageType.Thermal: 3,
  DamageType.Void: 4,
  DamageType.Raid: 5,
  DamageType.Stasis: 6,
  DamageType.ProtectedInvalidEnumValue: 999999999,
};
