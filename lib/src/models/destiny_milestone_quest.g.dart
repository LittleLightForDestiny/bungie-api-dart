// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_quest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneQuest _$DestinyMilestoneQuestFromJson(
    Map<String, dynamic> json) {
  return DestinyMilestoneQuest()
    ..questItemHash = json['questItemHash'] as int
    ..status = json['status'] == null
        ? null
        : DestinyQuestStatus.fromJson(json['status'] as Map<String, dynamic>)
    ..activity = json['activity'] == null
        ? null
        : DestinyMilestoneActivity.fromJson(
            json['activity'] as Map<String, dynamic>)
    ..challenges = (json['challenges'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyChallengeStatus.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DestinyMilestoneQuestToJson(
        DestinyMilestoneQuest instance) =>
    <String, dynamic>{
      'questItemHash': instance.questItemHash,
      'status': instance.status,
      'activity': instance.activity,
      'challenges': instance.challenges,
    };
