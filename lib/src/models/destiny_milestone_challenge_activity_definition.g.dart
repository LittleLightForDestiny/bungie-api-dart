// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_challenge_activity_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneChallengeActivityDefinition
    _$DestinyMilestoneChallengeActivityDefinitionFromJson(
            Map<String, dynamic> json) =>
        DestinyMilestoneChallengeActivityDefinition()
          ..activityHash = json['activityHash'] as int?
          ..challenges = (json['challenges'] as List<dynamic>?)
              ?.map((e) => DestinyMilestoneChallengeDefinition.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          ..activityGraphNodes = (json['activityGraphNodes'] as List<dynamic>?)
              ?.map((e) =>
                  DestinyMilestoneChallengeActivityGraphNodeEntry.fromJson(
                      e as Map<String, dynamic>))
              .toList()
          ..phases = (json['phases'] as List<dynamic>?)
              ?.map((e) => DestinyMilestoneChallengeActivityPhase.fromJson(
                  e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$DestinyMilestoneChallengeActivityDefinitionToJson(
        DestinyMilestoneChallengeActivityDefinition instance) =>
    <String, dynamic>{
      'activityHash': instance.activityHash,
      'challenges': instance.challenges?.map((e) => e.toJson()).toList(),
      'activityGraphNodes':
          instance.activityGraphNodes?.map((e) => e.toJson()).toList(),
      'phases': instance.phases?.map((e) => e.toJson()).toList(),
    };
