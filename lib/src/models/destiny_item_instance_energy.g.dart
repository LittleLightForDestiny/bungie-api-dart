// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_instance_energy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemInstanceEnergy _$DestinyItemInstanceEnergyFromJson(
  Map<String, dynamic> json,
) =>
    DestinyItemInstanceEnergy()
      ..energyTypeHash = (json['energyTypeHash'] as num?)?.toInt()
      ..energyType = decodeDestinyEnergyType(json['energyType'])
      ..energyCapacity = (json['energyCapacity'] as num?)?.toInt()
      ..energyUsed = (json['energyUsed'] as num?)?.toInt()
      ..energyUnused = (json['energyUnused'] as num?)?.toInt();

Map<String, dynamic> _$DestinyItemInstanceEnergyToJson(
  DestinyItemInstanceEnergy instance,
) => <String, dynamic>{
  'energyTypeHash': instance.energyTypeHash,
  'energyType': encodeDestinyEnergyType(instance.energyType),
  'energyCapacity': instance.energyCapacity,
  'energyUsed': instance.energyUsed,
  'energyUnused': instance.energyUnused,
};
