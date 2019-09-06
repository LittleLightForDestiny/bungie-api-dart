import 'destiny_public_milestone_quest.dart';
import 'destiny_public_milestone_challenge_activity.dart';
import 'destiny_public_milestone_vendor.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_public_milestone.g.dart';

/// Information about milestones, presented in a character state-agnostic manner. Combine this data with DestinyMilestoneDefinition to get a full picture of the milestone, which is basically a checklist of things to do in the game. Think of this as GetPublicAdvisors 3.0, for those who used the Destiny 1 API.
@JsonSerializable()
class DestinyPublicMilestone {

	/// The hash identifier for the milestone. Use it to look up the DestinyMilestoneDefinition for static data about the Milestone.
	@JsonKey(name:'milestoneHash')
	int milestoneHash;

	/// A milestone not need have even a single quest, but if there are active quests they will be returned here.
	@JsonKey(name:'availableQuests')
	List<DestinyPublicMilestoneQuest> availableQuests;

	@JsonKey(name:'activities')
	List<DestinyPublicMilestoneChallengeActivity> activities;

	/// Sometimes milestones - or activities active in milestones - will have relevant vendors. These are the vendors that are currently relevant.
	/// Deprecated, already, for the sake of the new &quot;vendors&quot; property that has more data. What was I thinking.
	@JsonKey(name:'vendorHashes')
	List<int> vendorHashes;

	/// This is why we can&#39;t have nice things. This is the ordered list of vendors to be shown that relate to this milestone, potentially along with other interesting data.
	@JsonKey(name:'vendors')
	List<DestinyPublicMilestoneVendor> vendors;

	/// If known, this is the date when the Milestone started&#x2F;became active.
	@JsonKey(name:'startDate')
	String startDate;

	/// If known, this is the date when the Milestone will expire&#x2F;recycle&#x2F;end.
	@JsonKey(name:'endDate')
	String endDate;

	/// Used for ordering milestones in a display to match how we order them in BNet. May pull from static data, or possibly in the future from dynamic information.
	@JsonKey(name:'order')
	int order;
	DestinyPublicMilestone();

	factory DestinyPublicMilestone.fromJson(Map<String, dynamic> json) => _$DestinyPublicMilestoneFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyPublicMilestoneToJson(this);
}
