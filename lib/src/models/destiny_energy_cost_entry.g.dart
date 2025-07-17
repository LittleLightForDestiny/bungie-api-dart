// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_energy_cost_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyEnergyCostEntry _$DestinyEnergyCostEntryFromJson(
  Map<String, dynamic> json,
) =>
    DestinyEnergyCostEntry()
      ..energyCost = (json['energyCost'] as num?)?.toInt()
      ..energyTypeHash = (json['energyTypeHash'] as num?)?.toInt()
      ..energyType = decodeDestinyEnergyType(json['energyType']);

Map<String, dynamic> _$DestinyEnergyCostEntryToJson(
  DestinyEnergyCostEntry instance,
) => <String, dynamic>{
  'energyCost': instance.energyCost,
  'energyTypeHash': instance.energyTypeHash,
  'energyType': encodeDestinyEnergyType(instance.energyType),
};
