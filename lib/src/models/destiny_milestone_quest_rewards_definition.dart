import 'destiny_milestone_quest_reward_item.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_milestone_quest_rewards_definition.g.dart';

/// If rewards are given in a quest - as opposed to overall in the entire Milestone - there&#39;s way less to track. We&#39;re going to simplify this contract as a result. However, this also gives us the opportunity to potentially put more than just item information into the reward data if we&#39;re able to mine it out in the future. Remember this if you come back and ask &quot;why are quest reward items nested inside of their own class?&quot;
@JsonSerializable()
class DestinyMilestoneQuestRewardsDefinition {

	/// The items that represent your reward for completing the quest.
	/// Be warned, these could be &quot;dummy&quot; items: items that are only used to render a good-looking in-game tooltip, but aren&#39;t the actual items themselves.
	/// For instance, when experience is given there&#39;s often a dummy item representing &quot;experience&quot;, with quantity being the amount of experience you got. We don&#39;t have a programmatic association between those and whatever Progression is actually getting that experience... yet.
	@JsonKey(name:'items')
	List<DestinyMilestoneQuestRewardItem> items;
	DestinyMilestoneQuestRewardsDefinition();

	factory DestinyMilestoneQuestRewardsDefinition.fromJson(Map<String, dynamic> json) => _$DestinyMilestoneQuestRewardsDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneQuestRewardsDefinitionToJson(this);
}
