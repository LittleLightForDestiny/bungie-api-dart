// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_instance_energy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemInstanceEnergy _$DestinyItemInstanceEnergyFromJson(
    Map<String, dynamic> json) {
  return DestinyItemInstanceEnergy()
    ..energyTypeHash = json['energyTypeHash'] as int
    ..energyType = _$enumDecodeNullable(
        _$DestinyEnergyTypeEnumMap, json['energyType'],
        unknownValue: DestinyEnergyType.ProtectedInvalidEnumValue)
    ..energyCapacity = json['energyCapacity'] as int
    ..energyUsed = json['energyUsed'] as int
    ..energyUnused = json['energyUnused'] as int;
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
  DestinyEnergyType.Ghost: 4,
  DestinyEnergyType.Subclass: 5,
  DestinyEnergyType.ProtectedInvalidEnumValue: 999999999,
};
