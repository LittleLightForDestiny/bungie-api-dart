// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_quest_reward_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneQuestRewardItem _$DestinyMilestoneQuestRewardItemFromJson(
    Map<String, dynamic> json) {
  return DestinyMilestoneQuestRewardItem()
    ..vendorHash = json['vendorHash'] as int?
    ..vendorItemIndex = json['vendorItemIndex'] as int?
    ..itemHash = json['itemHash'] as int?
    ..itemInstanceId = json['itemInstanceId'] as String?
    ..quantity = json['quantity'] as int?
    ..hasConditionalVisibility = json['hasConditionalVisibility'] as bool?;
}

Map<String, dynamic> _$DestinyMilestoneQuestRewardItemToJson(
        DestinyMilestoneQuestRewardItem instance) =>
    <String, dynamic>{
      'vendorHash': instance.vendorHash,
      'vendorItemIndex': instance.vendorItemIndex,
      'itemHash': instance.itemHash,
      'itemInstanceId': instance.itemInstanceId,
      'quantity': instance.quantity,
      'hasConditionalVisibility': instance.hasConditionalVisibility,
    };
