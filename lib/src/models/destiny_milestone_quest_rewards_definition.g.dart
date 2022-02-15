// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_quest_rewards_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneQuestRewardsDefinition
    _$DestinyMilestoneQuestRewardsDefinitionFromJson(
            Map<String, dynamic> json) =>
        DestinyMilestoneQuestRewardsDefinition()
          ..items = (json['items'] as List<dynamic>?)
              ?.map((e) => DestinyMilestoneQuestRewardItem.fromJson(
                  e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$DestinyMilestoneQuestRewardsDefinitionToJson(
        DestinyMilestoneQuestRewardsDefinition instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
