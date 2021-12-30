import 'package:json_annotation/json_annotation.dart';

import 'destiny_display_properties_definition.dart';
import 'destiny_milestone_reward_entry_definition.dart';

part 'destiny_milestone_reward_category_definition.g.dart';

/// The definition of a category of rewards, that contains many individual rewards.
@JsonSerializable()
class DestinyMilestoneRewardCategoryDefinition{	
	DestinyMilestoneRewardCategoryDefinition();

	factory DestinyMilestoneRewardCategoryDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyMilestoneRewardCategoryDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneRewardCategoryDefinitionToJson(this);
	
	/// Identifies the reward category. Only guaranteed unique within this specific component!
	@JsonKey(name:'categoryHash')
	int? categoryHash;
	
	/// The string identifier for the category, if you want to use it for some end. Guaranteed unique within the specific component.
	@JsonKey(name:'categoryIdentifier')
	String? categoryIdentifier;
	
	/// Hopefully this is obvious by now.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;
	
	/// If this milestone can provide rewards, this will define the sets of rewards that can be earned, the conditions under which they can be acquired, internal data that we'll use at runtime to determine whether you've already earned or redeemed this set of rewards, and the category that this reward should be placed under.
	@JsonKey(name:'rewardEntries')
	Map<String, DestinyMilestoneRewardEntryDefinition>? rewardEntries;
	
	/// If you want to use BNet's recommended order for rendering categories programmatically, use this value and compare it to other categories to determine the order in which they should be rendered. I don't feel great about putting this here, I won't lie.
	@JsonKey(name:'order')
	int? order;
}