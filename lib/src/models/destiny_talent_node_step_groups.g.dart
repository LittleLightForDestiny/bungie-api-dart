// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_talent_node_step_groups.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyTalentNodeStepGroups _$DestinyTalentNodeStepGroupsFromJson(
        Map<String, dynamic> json) =>
    DestinyTalentNodeStepGroups()
      ..weaponPerformance = json['weaponPerformance'] == null
          ? null
          : DestinyTalentNodeStepWeaponPerformances.fromJson(
              json['weaponPerformance'] as int)
      ..impactEffects = json['impactEffects'] == null
          ? null
          : DestinyTalentNodeStepImpactEffects.fromJson(
              json['impactEffects'] as int)
      ..guardianAttributes = json['guardianAttributes'] == null
          ? null
          : DestinyTalentNodeStepGuardianAttributes.fromJson(
              json['guardianAttributes'] as int)
      ..lightAbilities = json['lightAbilities'] == null
          ? null
          : DestinyTalentNodeStepLightAbilities.fromJson(
              json['lightAbilities'] as int)
      ..damageTypes = json['damageTypes'] == null
          ? null
          : DestinyTalentNodeStepDamageTypes.fromJson(
              json['damageTypes'] as int);

Map<String, dynamic> _$DestinyTalentNodeStepGroupsToJson(
        DestinyTalentNodeStepGroups instance) =>
    <String, dynamic>{
      'weaponPerformance': instance.weaponPerformance?.toJson(),
      'impactEffects': instance.impactEffects?.toJson(),
      'guardianAttributes': instance.guardianAttributes?.toJson(),
      'lightAbilities': instance.lightAbilities?.toJson(),
      'damageTypes': instance.damageTypes?.toJson(),
    };
