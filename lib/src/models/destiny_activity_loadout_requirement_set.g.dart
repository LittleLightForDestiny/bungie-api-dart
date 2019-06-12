// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_loadout_requirement_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityLoadoutRequirementSet
    _$DestinyActivityLoadoutRequirementSetFromJson(Map<String, dynamic> json) {
  return DestinyActivityLoadoutRequirementSet()
    ..requirements = (json['requirements'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyActivityLoadoutRequirement.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DestinyActivityLoadoutRequirementSetToJson(
        DestinyActivityLoadoutRequirementSet instance) =>
    <String, dynamic>{'requirements': instance.requirements};
