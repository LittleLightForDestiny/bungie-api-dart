// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_reward_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneRewardCategory _$DestinyMilestoneRewardCategoryFromJson(
    Map<String, dynamic> json) {
  return DestinyMilestoneRewardCategory()
    ..rewardCategoryHash = json['rewardCategoryHash'] as int?
    ..entries = (json['entries'] as List<dynamic>?)
        ?.map((e) =>
            DestinyMilestoneRewardEntry.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$DestinyMilestoneRewardCategoryToJson(
        DestinyMilestoneRewardCategory instance) =>
    <String, dynamic>{
      'rewardCategoryHash': instance.rewardCategoryHash,
      'entries': instance.entries,
    };
