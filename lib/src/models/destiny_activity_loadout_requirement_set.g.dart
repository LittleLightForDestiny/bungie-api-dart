// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_loadout_requirement_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityLoadoutRequirementSet
_$DestinyActivityLoadoutRequirementSetFromJson(Map<String, dynamic> json) =>
    DestinyActivityLoadoutRequirementSet()
      ..requirements =
          (json['requirements'] as List<dynamic>?)
              ?.map(
                (e) => DestinyActivityLoadoutRequirement.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList();

Map<String, dynamic> _$DestinyActivityLoadoutRequirementSetToJson(
  DestinyActivityLoadoutRequirementSet instance,
) => <String, dynamic>{
  'requirements': instance.requirements?.map((e) => e.toJson()).toList(),
};
