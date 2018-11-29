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

	static DestinyPublicMilestone fromJson(Map<String, dynamic> data){
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
		List<DestinyPublicMilestone> list = new List();
    data.forEach((item) {
      list.add(DestinyPublicMilestone.fromJson(item));
    });
    return list;
	}
}