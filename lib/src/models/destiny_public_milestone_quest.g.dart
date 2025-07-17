// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_public_milestone_quest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPublicMilestoneQuest _$DestinyPublicMilestoneQuestFromJson(
        Map<String, dynamic> json) =>
    DestinyPublicMilestoneQuest()
      ..questItemHash = (json['questItemHash'] as num?)?.toInt()
      ..activity = json['activity'] == null
          ? null
          : DestinyPublicMilestoneActivity.fromJson(
              json['activity'] as Map<String, dynamic>)
      ..challenges = (json['challenges'] as List<dynamic>?)
          ?.map((e) => DestinyPublicMilestoneChallenge.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DestinyPublicMilestoneQuestToJson(
        DestinyPublicMilestoneQuest instance) =>
    <String, dynamic>{
      'questItemHash': instance.questItemHash,
      'activity': instance.activity?.toJson(),
      'challenges': instance.challenges?.map((e) => e.toJson()).toList(),
    };
