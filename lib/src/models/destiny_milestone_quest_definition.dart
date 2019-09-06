import 'destiny_display_properties_definition.dart';
import 'destiny_milestone_quest_rewards_definition.dart';
import 'destiny_milestone_activity_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_milestone_quest_definition.g.dart';

/// Any data we need to figure out whether this Quest Item is the currently active one for the conceptual Milestone. Even just typing this description, I already regret it.
@JsonSerializable()
class DestinyMilestoneQuestDefinition {

	/// The item representing this Milestone quest. Use this hash to look up the DestinyInventoryItemDefinition for the quest to find its steps and human readable data.
	@JsonKey(name:'questItemHash')
	int questItemHash;

	/// The individual quests may have different definitions from the overall milestone: if there&#39;s a specific active quest, use these displayProperties instead of that of the overall DestinyMilestoneDefinition.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	/// If populated, this image can be shown instead of the generic milestone&#39;s image when this quest is live, or it can be used to show a background image for the quest itself that differs from that of the Activity or the Milestone.
	@JsonKey(name:'overrideImage')
	String overrideImage;

	/// The rewards you will get for completing this quest, as best as we could extract them from our data. Sometimes, it&#39;ll be a decent amount of data. Sometimes, it&#39;s going to be sucky. Sorry.
	@JsonKey(name:'questRewards')
	DestinyMilestoneQuestRewardsDefinition questRewards;

	/// The full set of all possible &quot;conceptual activities&quot; that are related to this Milestone. Tiers or alternative modes of play within these conceptual activities will be defined as sub-entities. Keyed by the Conceptual Activity Hash. Use the key to look up DestinyActivityDefinition.
	@JsonKey(name:'activities')
	Map<String, DestinyMilestoneActivityDefinition> activities;

	/// Sometimes, a Milestone&#39;s quest is related to an entire Destination rather than a specific activity. In that situation, this will be the hash of that Destination. Hotspots are currently the only Milestones that expose this data, but that does not preclude this data from being returned for other Milestones in the future.
	@JsonKey(name:'destinationHash')
	int destinationHash;
	DestinyMilestoneQuestDefinition();

	factory DestinyMilestoneQuestDefinition.fromJson(Map<String, dynamic> json) => _$DestinyMilestoneQuestDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneQuestDefinitionToJson(this);
}
