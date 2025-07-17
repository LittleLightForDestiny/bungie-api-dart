// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_reward_entry_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneRewardEntryDefinition
    _$DestinyMilestoneRewardEntryDefinitionFromJson(
            Map<String, dynamic> json) =>
        DestinyMilestoneRewardEntryDefinition()
          ..rewardEntryHash = (json['rewardEntryHash'] as num?)?.toInt()
          ..rewardEntryIdentifier = json['rewardEntryIdentifier'] as String?
          ..items = (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  DestinyItemQuantity.fromJson(e as Map<String, dynamic>))
              .toList()
          ..vendorHash = (json['vendorHash'] as num?)?.toInt()
          ..displayProperties = json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                  json['displayProperties'] as Map<String, dynamic>)
          ..order = (json['order'] as num?)?.toInt();

Map<String, dynamic> _$DestinyMilestoneRewardEntryDefinitionToJson(
        DestinyMilestoneRewardEntryDefinition instance) =>
    <String, dynamic>{
      'rewardEntryHash': instance.rewardEntryHash,
      'rewardEntryIdentifier': instance.rewardEntryIdentifier,
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'vendorHash': instance.vendorHash,
      'displayProperties': instance.displayProperties?.toJson(),
      'order': instance.order,
    };
