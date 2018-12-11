import 'destiny_milestone_quest_reward_item.dart';
class DestinyMilestoneQuestRewardsDefinition{
	List<DestinyMilestoneQuestRewardItem> items;
	DestinyMilestoneQuestRewardsDefinition(
		List<DestinyMilestoneQuestRewardItem> this.items,
	);

	static DestinyMilestoneQuestRewardsDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneQuestRewardsDefinition(
				DestinyMilestoneQuestRewardItem.fromList(data['items']),
		);
	}

	static List<DestinyMilestoneQuestRewardsDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneQuestRewardsDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneQuestRewardsDefinition.fromJson(item));
    });
    return list;
	}
}