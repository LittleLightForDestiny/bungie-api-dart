import 'destiny_milestone_quest_reward_item.dart';

/* If rewards are given in a quest - as opposed to overall in the entire Milestone - there's way less to track. We're going to simplify this contract as a result. However, this also gives us the opportunity to potentially put more than just item information into the reward data if we're able to mine it out in the future. Remember this if you come back and ask "why are quest reward items nested inside of their own class?" */
class DestinyMilestoneQuestRewardsDefinition{
	
	/* The items that represent your reward for completing the quest.
Be warned, these could be "dummy" items: items that are only used to render a good-looking in-game tooltip, but aren't the actual items themselves.
For instance, when experience is given there's often a dummy item representing "experience", with quantity being the amount of experience you got. We don't have a programmatic association between those and whatever Progression is actually getting that experience... yet. */
	List<DestinyMilestoneQuestRewardItem> items;
	DestinyMilestoneQuestRewardsDefinition(
		this.items,
	);

	static DestinyMilestoneQuestRewardsDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneQuestRewardsDefinition(
				data['items'] != null ? DestinyMilestoneQuestRewardItem.fromList(data['items']) : null,
		);
	}

	static List<DestinyMilestoneQuestRewardsDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneQuestRewardsDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneQuestRewardsDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['items'] = this.items.map((item)=>item.toMap()).toList();
		return data;
	}
}