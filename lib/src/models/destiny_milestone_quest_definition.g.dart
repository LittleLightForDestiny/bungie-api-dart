// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_quest_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneQuestDefinition _$DestinyMilestoneQuestDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyMilestoneQuestDefinition()
      ..questItemHash = json['questItemHash'] as int?
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..overrideImage = json['overrideImage'] as String?
      ..questRewards = json['questRewards'] == null
          ? null
          : DestinyMilestoneQuestRewardsDefinition.fromJson(
              json['questRewards'] as Map<String, dynamic>)
      ..activities = (json['activities'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            DestinyMilestoneActivityDefinition.fromJson(
                e as Map<String, dynamic>)),
      )
      ..destinationHash = json['destinationHash'] as int?;

Map<String, dynamic> _$DestinyMilestoneQuestDefinitionToJson(
        DestinyMilestoneQuestDefinition instance) =>
    <String, dynamic>{
      'questItemHash': instance.questItemHash,
      'displayProperties': instance.displayProperties?.toJson(),
      'overrideImage': instance.overrideImage,
      'questRewards': instance.questRewards?.toJson(),
      'activities': instance.activities?.map((k, e) => MapEntry(k, e.toJson())),
      'destinationHash': instance.destinationHash,
    };
