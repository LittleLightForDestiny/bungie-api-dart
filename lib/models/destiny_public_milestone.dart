import 'destiny_public_milestone_quest.dart';
import 'destiny_public_milestone_challenge_activity.dart';
import 'destiny_public_milestone_vendor.dart';

/** Information about milestones, presented in a character state-agnostic manner. Combine this data with DestinyMilestoneDefinition to get a full picture of the milestone, which is basically a checklist of things to do in the game. Think of this as GetPublicAdvisors 3.0, for those who used the Destiny 1 API. */
class DestinyPublicMilestone{
	
	/** The hash identifier for the milestone. Use it to look up the DestinyMilestoneDefinition for static data about the Milestone. */
	int milestoneHash;
	
	/** A milestone not need have even a single quest, but if there are active quests they will be returned here. */
	List<DestinyPublicMilestoneQuest> availableQuests;
	
	/**  */
	List<DestinyPublicMilestoneChallengeActivity> activities;
	
	/** Sometimes milestones - or activities active in milestones - will have relevant vendors. These are the vendors that are currently relevant.
Deprecated, already, for the sake of the new "vendors" property that has more data. What was I thinking. */
	List<int> vendorHashes;
	
	/** This is why we can't have nice things. This is the ordered list of vendors to be shown that relate to this milestone, potentially along with other interesting data. */
	List<DestinyPublicMilestoneVendor> vendors;
	
	/** If known, this is the date when the Milestone started/became active. */
	String startDate;
	
	/** If known, this is the date when the Milestone will expire/recycle/end. */
	String endDate;
	
	/** Used for ordering milestones in a display to match how we order them in BNet. May pull from static data, or possibly in the future from dynamic information. */
	int order;
	DestinyPublicMilestone(
		this.milestoneHash,
		this.availableQuests,
		this.activities,
		this.vendorHashes,
		this.vendors,
		this.startDate,
		this.endDate,
		this.order,
	);

	static DestinyPublicMilestone fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPublicMilestone(
				data['milestoneHash'],
				data['availableQuests'] != null ? DestinyPublicMilestoneQuest.fromList(data['availableQuests']) : null,
				data['activities'] != null ? DestinyPublicMilestoneChallengeActivity.fromList(data['activities']) : null,
				data['vendorHashes'] != null ? data['vendorHashes']?.cast<int>() ?? null : null,
				data['vendors'] != null ? DestinyPublicMilestoneVendor.fromList(data['vendors']) : null,
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
			data['availableQuests'] = this.availableQuests != null? this.availableQuests.map((item)=>item.toMap()).toList() : null;
			data['activities'] = this.activities != null? this.activities.map((item)=>item.toMap()).toList() : null;
			data['vendorHashes'] = this.vendorHashes;
			data['vendors'] = this.vendors != null? this.vendors.map((item)=>item.toMap()).toList() : null;
			data['startDate'] = this.startDate;
			data['endDate'] = this.endDate;
			data['order'] = this.order;
		return data;
	}
}