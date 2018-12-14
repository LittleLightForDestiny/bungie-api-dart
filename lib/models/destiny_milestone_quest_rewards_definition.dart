import 'destiny_milestone_quest_reward_item.dart';
class DestinyMilestoneQuestRewardsDefinition{
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