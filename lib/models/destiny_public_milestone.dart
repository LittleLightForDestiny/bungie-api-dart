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
			data['milestoneHash'] = milestoneHash;
			data['availableQuests'] = availableQuests.map((item)=>item.toMap());
			data['activities'] = activities.map((item)=>item.toMap());
			data['vendorHashes'] = vendorHashes;
			data['vendors'] = vendors.map((item)=>item.toMap());
			data['startDate'] = startDate;
			data['endDate'] = endDate;
			data['order'] = order;
	}
}