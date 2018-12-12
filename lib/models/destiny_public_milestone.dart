import 'destiny_public_milestone_quest.dart';
import 'destiny_public_milestone_challenge_activity.dart';
import 'destiny_public_milestone_vendor.dart';
class DestinyPublicMilestone{
	int milestoneHash;
	List<DestinyPublicMilestoneQuest> availableQuests;
	List<DestinyPublicMilestoneChallengeActivity> activities;
	List<int> vendorHashes;
	List<DestinyPublicMilestoneVendor> vendors;
	String startDate;
	String endDate;
	int order;
	DestinyPublicMilestone(
		int this.milestoneHash,
		List<DestinyPublicMilestoneQuest> this.availableQuests,
		List<DestinyPublicMilestoneChallengeActivity> this.activities,
		List<int> this.vendorHashes,
		List<DestinyPublicMilestoneVendor> this.vendors,
		String this.startDate,
		String this.endDate,
		int this.order,
	);

	static DestinyPublicMilestone fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPublicMilestone(
				data['milestoneHash'],
				DestinyPublicMilestoneQuest.fromList(data['availableQuests']),
				DestinyPublicMilestoneChallengeActivity.fromList(data['activities']),
				data['vendorHashes'],
				DestinyPublicMilestoneVendor.fromList(data['vendors']),
				data['startDate'],
				data['endDate'],
				data['order'],
		);
	}

	static List<DestinyPublicMilestone> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPublicMilestone> list = new List();
    data.forEach((item) {
      list.add(DestinyPublicMilestone.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['milestoneHash'] = this.milestoneHash;
			data['availableQuests'] = this.availableQuests.map((item)=>item.toMap()).toList();
			data['activities'] = this.activities.map((item)=>item.toMap()).toList();
			data['vendorHashes'] = this.vendorHashes;
			data['vendors'] = this.vendors.map((item)=>item.toMap()).toList();
			data['startDate'] = this.startDate;
			data['endDate'] = this.endDate;
			data['order'] = this.order;
		return data;
	}
}