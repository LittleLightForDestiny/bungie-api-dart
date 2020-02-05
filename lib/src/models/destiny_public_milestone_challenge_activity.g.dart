// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_public_milestone_challenge_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPublicMilestoneChallengeActivity
    _$DestinyPublicMilestoneChallengeActivityFromJson(
        Map<String, dynamic> json) {
  return DestinyPublicMilestoneChallengeActivity()
    ..activityHash = json['activityHash'] as int
    ..challengeObjectiveHashes = (json['challengeObjectiveHashes'] as List)
        ?.map((e) => e as int)
        ?.toList()
    ..modifierHashes =
        (json['modifierHashes'] as List)?.map((e) => e as int)?.toList()
    ..loadoutRequirementIndex = json['loadoutRequirementIndex'] as int
    ..phaseHashes =
        (json['phaseHashes'] as List)?.map((e) => e as int)?.toList()
    ..booleanActivityOptions =
        (json['booleanActivityOptions'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as bool),
    );
}

Map<String, dynamic> _$DestinyPublicMilestoneChallengeActivityToJson(
        DestinyPublicMilestoneChallengeActivity instance) =>
    <String, dynamic>{
      'activityHash': instance.activityHash,
      'challengeObjectiveHashes': instance.challengeObjectiveHashes,
      'modifierHashes': instance.modifierHashes,
      'loadoutRequirementIndex': instance.loadoutRequirementIndex,
      'phaseHashes': instance.phaseHashes,
      'booleanActivityOptions': instance.booleanActivityOptions,
    };
