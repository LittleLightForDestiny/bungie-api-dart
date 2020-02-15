// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_energy_capacity_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyEnergyCapacityEntry _$DestinyEnergyCapacityEntryFromJson(
    Map<String, dynamic> json) {
  return DestinyEnergyCapacityEntry()
    ..capacityValue = json['capacityValue'] as int
    ..energyTypeHash = json['energyTypeHash'] as int
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

const _$DestinyEnergyTypeEnumMap = {
  DestinyEnergyType.Any: 0,
  DestinyEnergyType.Arc: 1,
  DestinyEnergyType.Thermal: 2,
  DestinyEnergyType.Void: 3,
  DestinyEnergyType.ProtectedInvalidEnumValue: 999999999,
};
