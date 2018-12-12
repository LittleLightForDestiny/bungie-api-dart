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

	static DestinyMilestone fromMap(Map<String, dynamic> data){
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
      list.add(DestinyMilestone.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['milestoneHash'] = milestoneHash;
			data['availableQuests'] = availableQuests.map((item)=>item.toMap());
			data['activities'] = activities.map((item)=>item.toMap());
			data['values'] = values;
			data['vendorHashes'] = vendorHashes;
			data['vendors'] = vendors.map((item)=>item.toMap());
			data['rewards'] = rewards.map((item)=>item.toMap());
			data['startDate'] = startDate;
			data['endDate'] = endDate;
			data['order'] = order;
	}
}