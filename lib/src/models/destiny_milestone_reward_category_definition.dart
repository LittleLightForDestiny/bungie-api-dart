import 'destiny_display_properties_definition.dart';
import 'destiny_milestone_reward_entry_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_milestone_reward_category_definition.g.dart';

/// The definition of a category of rewards, that contains many individual rewards.
@JsonSerializable()
class DestinyMilestoneRewardCategoryDefinition {

	/// Identifies the reward category. Only guaranteed unique within this specific component!
	@JsonKey(name:'categoryHash')
	int categoryHash;

	/// The string identifier for the category, if you want to use it for some end. Guaranteed unique within the specific component.
	@JsonKey(name:'categoryIdentifier')
	String categoryIdentifier;

	/// Hopefully this is obvious by now.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	/// If this milestone can provide rewards, this will define the sets of rewards that can be earned, the conditions under which they can be acquired, internal data that we&#39;ll use at runtime to determine whether you&#39;ve already earned or redeemed this set of rewards, and the category that this reward should be placed under.
	@JsonKey(name:'rewardEntries')
	Map<String, DestinyMilestoneRewardEntryDefinition> rewardEntries;

	/// If you want to use BNet&#39;s recommended order for rendering categories programmatically, use this value and compare it to other categories to determine the order in which they should be rendered. I don&#39;t feel great about putting this here, I won&#39;t lie.
	@JsonKey(name:'order')
	int order;
	DestinyMilestoneRewardCategoryDefinition();

	factory DestinyMilestoneRewardCategoryDefinition.fromJson(Map<String, dynamic> json) => _$DestinyMilestoneRewardCategoryDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneRewardCategoryDefinitionToJson(this);
}
