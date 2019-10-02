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
    ..energyType = json['energyType'] as int;
}

Map<String, dynamic> _$DestinyEnergyCapacityEntryToJson(
        DestinyEnergyCapacityEntry instance) =>
    <String, dynamic>{
      'capacityValue': instance.capacityValue,
      'energyTypeHash': instance.energyTypeHash,
      'energyType': instance.energyType
    };
