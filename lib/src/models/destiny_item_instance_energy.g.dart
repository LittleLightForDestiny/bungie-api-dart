// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_instance_energy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemInstanceEnergy _$DestinyItemInstanceEnergyFromJson(
        Map<String, dynamic> json) =>
    DestinyItemInstanceEnergy()
      ..energyTypeHash = json['energyTypeHash'] as int?
      ..energyType = decodeDestinyEnergyType(json['energyType'])
      ..energyCapacity = json['energyCapacity'] as int?
      ..energyUsed = json['energyUsed'] as int?
      ..energyUnused = json['energyUnused'] as int?;

Map<String, dynamic> _$DestinyItemInstanceEnergyToJson(
        DestinyItemInstanceEnergy instance) =>
    <String, dynamic>{
      'energyTypeHash': instance.energyTypeHash,
      'energyType': encodeDestinyEnergyType(instance.energyType),
      'energyCapacity': instance.energyCapacity,
      'energyUsed': instance.energyUsed,
      'energyUnused': instance.energyUnused,
    };
