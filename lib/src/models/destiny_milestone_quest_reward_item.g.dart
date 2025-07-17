// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_quest_reward_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneQuestRewardItem _$DestinyMilestoneQuestRewardItemFromJson(
        Map<String, dynamic> json) =>
    DestinyMilestoneQuestRewardItem()
      ..vendorHash = (json['vendorHash'] as num?)?.toInt()
      ..vendorItemIndex = (json['vendorItemIndex'] as num?)?.toInt()
      ..itemHash = (json['itemHash'] as num?)?.toInt()
      ..itemInstanceId = json['itemInstanceId'] as String?
      ..quantity = (json['quantity'] as num?)?.toInt()
      ..hasConditionalVisibility = json['hasConditionalVisibility'] as bool?;

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
