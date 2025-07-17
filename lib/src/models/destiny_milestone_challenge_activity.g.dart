// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_challenge_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneChallengeActivity _$DestinyMilestoneChallengeActivityFromJson(
  Map<String, dynamic> json,
) =>
    DestinyMilestoneChallengeActivity()
      ..activityHash = (json['activityHash'] as num?)?.toInt()
      ..challenges =
          (json['challenges'] as List<dynamic>?)
              ?.map(
                (e) =>
                    DestinyChallengeStatus.fromJson(e as Map<String, dynamic>),
              )
              .toList()
      ..modifierHashes =
          (json['modifierHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..booleanActivityOptions = (json['booleanActivityOptions']
              as Map<String, dynamic>?)
          ?.map((k, e) => MapEntry(k, e as bool))
      ..loadoutRequirementIndex =
          (json['loadoutRequirementIndex'] as num?)?.toInt()
      ..phases =
          (json['phases'] as List<dynamic>?)
              ?.map(
                (e) => DestinyMilestoneActivityPhase.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList();

Map<String, dynamic> _$DestinyMilestoneChallengeActivityToJson(
  DestinyMilestoneChallengeActivity instance,
) => <String, dynamic>{
  'activityHash': instance.activityHash,
  'challenges': instance.challenges?.map((e) => e.toJson()).toList(),
  'modifierHashes': instance.modifierHashes,
  'booleanActivityOptions': instance.booleanActivityOptions,
  'loadoutRequirementIndex': instance.loadoutRequirementIndex,
  'phases': instance.phases?.map((e) => e.toJson()).toList(),
};
