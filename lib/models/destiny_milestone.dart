import 'destiny_milestone_quest.dart';
import 'destiny_milestone_challenge_activity.dart';
import 'destiny_milestone_vendor.dart';
import 'destiny_milestone_reward_category.dart';
class DestinyMilestone{
	int milestoneHash;
	List<DestinyMilestoneQuest> availableQuests;
	List<DestinyMilestoneChallengeActivity> activities;
	Map<String, double> values;
	List<int> vendorHashes;
	List<DestinyMilestoneVendor> vendors;
	List<DestinyMilestoneRewardCategory> rewards;
	String startDate;
	String endDate;
	int order;
	DestinyMilestone(
		this.milestoneHash,
		this.availableQuests,
		this.activities,
		this.values,
		this.vendorHashes,
		this.vendors,
		this.rewards,
		this.startDate,
		this.endDate,
		this.order,
	);

	static DestinyMilestone fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestone(
				data['milestoneHash'],
				data['availableQuests'] != null ? DestinyMilestoneQuest.fromList(data['availableQuests']) : null,
				data['activities'] != null ? DestinyMilestoneChallengeActivity.fromList(data['activities']) : null,
				data['values'] != null ? Map<String, double>.from(data['values'].map((k, v)=>MapEntry(k, v))) : null,
				data['vendorHashes'] != null ? data['vendorHashes']?.cast<int>() ?? null : null,
				data['vendors'] != null ? DestinyMilestoneVendor.fromList(data['vendors']) : null,
				data['rewards'] != null ? DestinyMilestoneRewardCategory.fromList(data['rewards']) : null,
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
			data['milestoneHash'] = this.milestoneHash;
			data['availableQuests'] = this.availableQuests.map((item)=>item.toMap()).toList();
			data['activities'] = this.activities.map((item)=>item.toMap()).toList();
			data['values'] = this.values;
			data['vendorHashes'] = this.vendorHashes;
			data['vendors'] = this.vendors.map((item)=>item.toMap()).toList();
			data['rewards'] = this.rewards.map((item)=>item.toMap()).toList();
			data['startDate'] = this.startDate;
			data['endDate'] = this.endDate;
			data['order'] = this.order;
		return data;
	}
}