import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_milestone_quest_reward_item.dart';

part 'destiny_milestone_quest_rewards_definition.g.dart';

/// If rewards are given in a quest - as opposed to overall in the entire Milestone - there&#39;s way less to track. We&#39;re going to simplify this contract as a result. However, this also gives us the opportunity to potentially put more than just item information into the reward data if we&#39;re able to mine it out in the future. Remember this if you come back and ask &quot;why are quest reward items nested inside of their own class?&quot;
@JsonSerializable()
class DestinyMilestoneQuestRewardsDefinition{	
	DestinyMilestoneQuestRewardsDefinition();

	
	/// The items that represent your reward for completing the quest.
	/// Be warned, these could be "dummy" items: items that are only used to render a good-looking in-game tooltip, but aren't the actual items themselves.
	/// For instance, when experience is given there's often a dummy item representing "experience", with quantity being the amount of experience you got. We don't have a programmatic association between those and whatever Progression is actually getting that experience... yet.
	@JsonKey(name:'items')
	List<DestinyMilestoneQuestRewardItem>? items;

	factory DestinyMilestoneQuestRewardsDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyMilestoneQuestRewardsDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneQuestRewardsDefinitionToJson(this);

	static Future<DestinyMilestoneQuestRewardsDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyMilestoneQuestRewardsDefinition>((json)=>DestinyMilestoneQuestRewardsDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}