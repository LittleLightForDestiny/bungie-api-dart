import 'destiny_milestone_quest_reward_item.dart';
class DestinyMilestoneQuestRewardsDefinition{
	List<DestinyMilestoneQuestRewardItem> items;
	DestinyMilestoneQuestRewardsDefinition(
		List<DestinyMilestoneQuestRewardItem> this.items,
	);

	static DestinyMilestoneQuestRewardsDefinition fromJson(Map<String, dynamic> data){
		return new DestinyMilestoneQuestRewardsDefinition(
				DestinyMilestoneQuestRewardItem.fromList(data['items']),
		);
	}

	static List<DestinyMilestoneQuestRewardsDefinition> fromList(List<dynamic> data){
		List<DestinyMilestoneQuestRewardsDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneQuestRewardsDefinition.fromJson(item));
    });
    return list;
	}
}