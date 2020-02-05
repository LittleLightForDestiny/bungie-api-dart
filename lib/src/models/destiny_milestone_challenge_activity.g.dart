// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_challenge_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneChallengeActivity _$DestinyMilestoneChallengeActivityFromJson(
    Map<String, dynamic> json) {
  return DestinyMilestoneChallengeActivity()
    ..activityHash = json['activityHash'] as int
    ..challenges = (json['challenges'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyChallengeStatus.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..modifierHashes =
        (json['modifierHashes'] as List)?.map((e) => e as int)?.toList()
    ..booleanActivityOptions =
        (json['booleanActivityOptions'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as bool),
    )
    ..loadoutRequirementIndex = json['loadoutRequirementIndex'] as int
    ..phases = (json['phases'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyMilestoneActivityPhase.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DestinyMilestoneChallengeActivityToJson(
        DestinyMilestoneChallengeActivity instance) =>
    <String, dynamic>{
      'activityHash': instance.activityHash,
      'challenges': instance.challenges,
      'modifierHashes': instance.modifierHashes,
      'booleanActivityOptions': instance.booleanActivityOptions,
      'loadoutRequirementIndex': instance.loadoutRequirementIndex,
      'phases': instance.phases,
    };
