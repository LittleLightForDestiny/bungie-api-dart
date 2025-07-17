// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_energy_capacity_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyEnergyCapacityEntry _$DestinyEnergyCapacityEntryFromJson(
  Map<String, dynamic> json,
) =>
    DestinyEnergyCapacityEntry()
      ..capacityValue = (json['capacityValue'] as num?)?.toInt()
      ..energyTypeHash = (json['energyTypeHash'] as num?)?.toInt()
      ..energyType = decodeDestinyEnergyType(json['energyType']);

Map<String, dynamic> _$DestinyEnergyCapacityEntryToJson(
  DestinyEnergyCapacityEntry instance,
) => <String, dynamic>{
  'capacityValue': instance.capacityValue,
  'energyTypeHash': instance.energyTypeHash,
  'energyType': encodeDestinyEnergyType(instance.energyType),
};
