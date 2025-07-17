// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_public_milestone_challenge_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPublicMilestoneChallengeActivity
_$DestinyPublicMilestoneChallengeActivityFromJson(Map<String, dynamic> json) =>
    DestinyPublicMilestoneChallengeActivity()
      ..activityHash = (json['activityHash'] as num?)?.toInt()
      ..challengeObjectiveHashes =
          (json['challengeObjectiveHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..modifierHashes =
          (json['modifierHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..loadoutRequirementIndex =
          (json['loadoutRequirementIndex'] as num?)?.toInt()
      ..phaseHashes =
          (json['phaseHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..booleanActivityOptions = (json['booleanActivityOptions']
              as Map<String, dynamic>?)
          ?.map((k, e) => MapEntry(k, e as bool));

Map<String, dynamic> _$DestinyPublicMilestoneChallengeActivityToJson(
  DestinyPublicMilestoneChallengeActivity instance,
) => <String, dynamic>{
  'activityHash': instance.activityHash,
  'challengeObjectiveHashes': instance.challengeObjectiveHashes,
  'modifierHashes': instance.modifierHashes,
  'loadoutRequirementIndex': instance.loadoutRequirementIndex,
  'phaseHashes': instance.phaseHashes,
  'booleanActivityOptions': instance.booleanActivityOptions,
};
