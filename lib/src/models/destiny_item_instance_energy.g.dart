// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_instance_energy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemInstanceEnergy _$DestinyItemInstanceEnergyFromJson(
    Map<String, dynamic> json) {
  return DestinyItemInstanceEnergy()
    ..energyTypeHash = json['energyTypeHash'] as int?
    ..energyType = _$enumDecodeNullable(
        _$DestinyEnergyTypeEnumMap, json['energyType'],
        unknownValue: DestinyEnergyType.ProtectedInvalidEnumValue)
    ..energyCapacity = json['energyCapacity'] as int?
    ..energyUsed = json['energyUsed'] as int?
    ..energyUnused = json['energyUnused'] as int?;
}

Map<String, dynamic> _$DestinyItemInstanceEnergyToJson(
        DestinyItemInstanceEnergy instance) =>
    <String, dynamic>{
      'energyTypeHash': instance.energyTypeHash,
      'energyType': _$DestinyEnergyTypeEnumMap[instance.energyType],
      'energyCapacity': instance.energyCapacity,
      'energyUsed': instance.energyUsed,
      'energyUnused': instance.energyUnused,
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

const _$DestinyEnergyTypeEnumMap = {
  DestinyEnergyType.Any: 0,
  DestinyEnergyType.Arc: 1,
  DestinyEnergyType.Thermal: 2,
  DestinyEnergyType.Void: 3,
  DestinyEnergyType.Ghost: 4,
  DestinyEnergyType.Subclass: 5,
  DestinyEnergyType.Stasis: 6,
  DestinyEnergyType.ProtectedInvalidEnumValue: 999999999,
};
