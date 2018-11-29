import 'destiny_milestone_reward_entry.dart';
class DestinyMilestoneRewardCategory{
	int rewardCategoryHash;
	List<DestinyMilestoneRewardEntry> entries;
	DestinyMilestoneRewardCategory(
		int this.rewardCategoryHash,
		List<DestinyMilestoneRewardEntry> this.entries,
	);

	static DestinyMilestoneRewardCategory fromJson(Map<String, dynamic> data){
		return new DestinyMilestoneRewardCategory(
				data['rewardCategoryHash'],
				DestinyMilestoneRewardEntry.fromList(data['entries']),
		);
	}

	static List<DestinyMilestoneRewardCategory> fromList(List<dynamic> data){
		List<DestinyMilestoneRewardCategory> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneRewardCategory.fromJson(item));
    });
    return list;
	}
}