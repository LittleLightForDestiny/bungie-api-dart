import 'destiny_milestone_quest.dart';
import 'destiny_milestone_challenge_activity.dart';
import 'destiny_milestone_vendor.dart';
import 'destiny_milestone_reward_category.dart';
class DestinyMilestone{
	int milestoneHash;
	List<DestinyMilestoneQuest> availableQuests;
	List<DestinyMilestoneChallengeActivity> activities;
	Map<int, dynamic> values;
	List<int> vendorHashes;
	List<DestinyMilestoneVendor> vendors;
	List<DestinyMilestoneRewardCategory> rewards;
	String startDate;
	String endDate;
	int order;
	DestinyMilestone(
		int this.milestoneHash,
		List<DestinyMilestoneQuest> this.availableQuests,
		List<DestinyMilestoneChallengeActivity> this.activities,
		Map<int, dynamic> this.values,
		List<int> this.vendorHashes,
		List<DestinyMilestoneVendor> this.vendors,
		List<DestinyMilestoneRewardCategory> this.rewards,
		String this.startDate,
		String this.endDate,
		int this.order,
	);

	static DestinyMilestone fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestone(
				data['milestoneHash'],
				DestinyMilestoneQuest.fromList(data['availableQuests']),
				DestinyMilestoneChallengeActivity.fromList(data['activities']),
				data['values'],
				data['vendorHashes'],
				DestinyMilestoneVendor.fromList(data['vendors']),
				DestinyMilestoneRewardCategory.fromList(data['rewards']),
				data['startDate'],
				data['endDate'],
				data['order'],
		);
	}

	static List<DestinyMilestone> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestone> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestone.fromJson(item));
    });
    return list;
	}
}