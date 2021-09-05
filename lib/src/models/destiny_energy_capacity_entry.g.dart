// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_energy_capacity_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyEnergyCapacityEntry _$DestinyEnergyCapacityEntryFromJson(
    Map<String, dynamic> json) {
  return DestinyEnergyCapacityEntry()
    ..capacityValue = json['capacityValue'] as int?
    ..energyTypeHash = json['energyTypeHash'] as int?
    ..energyType = _$enumDecodeNullable(
        _$DestinyEnergyTypeEnumMap, json['energyType'],
        unknownValue: DestinyEnergyType.ProtectedInvalidEnumValue);
}

Map<String, dynamic> _$DestinyEnergyCapacityEntryToJson(
        DestinyEnergyCapacityEntry instance) =>
    <String, dynamic>{
      'capacityValue': instance.capacityValue,
      'energyTypeHash': instance.energyTypeHash,
      'energyType': _$DestinyEnergyTypeEnumMap[instance.energyType],
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
