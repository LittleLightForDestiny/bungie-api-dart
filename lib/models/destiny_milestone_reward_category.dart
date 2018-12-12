import 'destiny_milestone_reward_entry.dart';
class DestinyMilestoneRewardCategory{
	int rewardCategoryHash;
	List<DestinyMilestoneRewardEntry> entries;
	DestinyMilestoneRewardCategory(
		int this.rewardCategoryHash,
		List<DestinyMilestoneRewardEntry> this.entries,
	);

	static DestinyMilestoneRewardCategory fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneRewardCategory(
				data['rewardCategoryHash'],
				DestinyMilestoneRewardEntry.fromList(data['entries']),
		);
	}

	static List<DestinyMilestoneRewardCategory> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneRewardCategory> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneRewardCategory.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['rewardCategoryHash'] = this.rewardCategoryHash;
			data['entries'] = this.entries.map((item)=>item.toMap());
		return data;
	}
}