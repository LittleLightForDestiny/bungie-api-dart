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
              (json['weaponPerformance'] as num).toInt())
      ..impactEffects = json['impactEffects'] == null
          ? null
          : DestinyTalentNodeStepImpactEffects.fromJson(
              (json['impactEffects'] as num).toInt())
      ..guardianAttributes = json['guardianAttributes'] == null
          ? null
          : DestinyTalentNodeStepGuardianAttributes.fromJson(
              (json['guardianAttributes'] as num).toInt())
      ..lightAbilities = json['lightAbilities'] == null
          ? null
          : DestinyTalentNodeStepLightAbilities.fromJson(
              (json['lightAbilities'] as num).toInt())
      ..damageTypes = json['damageTypes'] == null
          ? null
          : DestinyTalentNodeStepDamageTypes.fromJson(
              (json['damageTypes'] as num).toInt());

Map<String, dynamic> _$DestinyTalentNodeStepGroupsToJson(
        DestinyTalentNodeStepGroups instance) =>
    <String, dynamic>{
      'weaponPerformance': instance.weaponPerformance?.toJson(),
      'impactEffects': instance.impactEffects?.toJson(),
      'guardianAttributes': instance.guardianAttributes?.toJson(),
      'lightAbilities': instance.lightAbilities?.toJson(),
      'damageTypes': instance.damageTypes?.toJson(),
    };
