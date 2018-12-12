import 'destiny_milestone_quest_reward_item.dart';
class DestinyMilestoneQuestRewardsDefinition{
	List<DestinyMilestoneQuestRewardItem> items;
	DestinyMilestoneQuestRewardsDefinition(
		List<DestinyMilestoneQuestRewardItem> this.items,
	);

	static DestinyMilestoneQuestRewardsDefinition fromMap(Map<String, dynamic> data){
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
      list.add(DestinyMilestoneQuestRewardsDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['items'] = items.map((item)=>item.toMap());
	}
}