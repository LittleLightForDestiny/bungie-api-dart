// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_reward_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneRewardEntry _$DestinyMilestoneRewardEntryFromJson(
    Map<String, dynamic> json) {
  return DestinyMilestoneRewardEntry()
    ..rewardEntryHash = json['rewardEntryHash'] as int
    ..earned = json['earned'] as bool
    ..redeemed = json['redeemed'] as bool;
}

Map<String, dynamic> _$DestinyMilestoneRewardEntryToJson(
        DestinyMilestoneRewardEntry instance) =>
    <String, dynamic>{
      'rewardEntryHash': instance.rewardEntryHash,
      'earned': instance.earned,
      'redeemed': instance.redeemed
    };
