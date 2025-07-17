// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_reward_category_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneRewardCategoryDefinition
    _$DestinyMilestoneRewardCategoryDefinitionFromJson(
            Map<String, dynamic> json) =>
        DestinyMilestoneRewardCategoryDefinition()
          ..categoryHash = (json['categoryHash'] as num?)?.toInt()
          ..categoryIdentifier = json['categoryIdentifier'] as String?
          ..displayProperties = json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                  json['displayProperties'] as Map<String, dynamic>)
          ..rewardEntries =
              (json['rewardEntries'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k,
                DestinyMilestoneRewardEntryDefinition.fromJson(
                    e as Map<String, dynamic>)),
          )
          ..order = (json['order'] as num?)?.toInt();

Map<String, dynamic> _$DestinyMilestoneRewardCategoryDefinitionToJson(
        DestinyMilestoneRewardCategoryDefinition instance) =>
    <String, dynamic>{
      'categoryHash': instance.categoryHash,
      'categoryIdentifier': instance.categoryIdentifier,
      'displayProperties': instance.displayProperties?.toJson(),
      'rewardEntries':
          instance.rewardEntries?.map((k, e) => MapEntry(k, e.toJson())),
      'order': instance.order,
    };
