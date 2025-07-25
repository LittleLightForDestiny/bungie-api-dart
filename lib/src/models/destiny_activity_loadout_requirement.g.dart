// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_loadout_requirement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityLoadoutRequirement _$DestinyActivityLoadoutRequirementFromJson(
  Map<String, dynamic> json,
) =>
    DestinyActivityLoadoutRequirement()
      ..equipmentSlotHash = (json['equipmentSlotHash'] as num?)?.toInt()
      ..allowedEquippedItemHashes =
          (json['allowedEquippedItemHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..allowedWeaponSubTypes =
          (json['allowedWeaponSubTypes'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$DestinyItemSubTypeEnumMap, e))
              .toList();

Map<String, dynamic> _$DestinyActivityLoadoutRequirementToJson(
  DestinyActivityLoadoutRequirement instance,
) => <String, dynamic>{
  'equipmentSlotHash': instance.equipmentSlotHash,
  'allowedEquippedItemHashes': instance.allowedEquippedItemHashes,
  'allowedWeaponSubTypes':
      instance.allowedWeaponSubTypes
          ?.map((e) => _$DestinyItemSubTypeEnumMap[e]!)
          .toList(),
};

const _$DestinyItemSubTypeEnumMap = {
  DestinyItemSubType.None: 0,
  DestinyItemSubType.Crucible: 1,
  DestinyItemSubType.Vanguard: 2,
  DestinyItemSubType.Exotic: 5,
  DestinyItemSubType.AutoRifle: 6,
  DestinyItemSubType.Shotgun: 7,
  DestinyItemSubType.Machinegun: 8,
  DestinyItemSubType.HandCannon: 9,
  DestinyItemSubType.RocketLauncher: 10,
  DestinyItemSubType.FusionRifle: 11,
  DestinyItemSubType.SniperRifle: 12,
  DestinyItemSubType.PulseRifle: 13,
  DestinyItemSubType.ScoutRifle: 14,
  DestinyItemSubType.Crm: 16,
  DestinyItemSubType.Sidearm: 17,
  DestinyItemSubType.Sword: 18,
  DestinyItemSubType.Mask: 19,
  DestinyItemSubType.Shader: 20,
  DestinyItemSubType.Ornament: 21,
  DestinyItemSubType.FusionRifleLine: 22,
  DestinyItemSubType.GrenadeLauncher: 23,
  DestinyItemSubType.SubmachineGun: 24,
  DestinyItemSubType.TraceRifle: 25,
  DestinyItemSubType.HelmetArmor: 26,
  DestinyItemSubType.GauntletsArmor: 27,
  DestinyItemSubType.ChestArmor: 28,
  DestinyItemSubType.LegArmor: 29,
  DestinyItemSubType.ClassArmor: 30,
  DestinyItemSubType.Bow: 31,
  DestinyItemSubType.DummyRepeatableBounty: 32,
  DestinyItemSubType.Glaive: 33,
  DestinyItemSubType.ProtectedInvalidEnumValue: 999999999,
};
