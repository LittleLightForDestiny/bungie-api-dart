import 'destiny_milestone_quest.dart';
import 'destiny_milestone_challenge_activity.dart';
import 'destiny_milestone_vendor.dart';
import 'destiny_milestone_reward_category.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_milestone.g.dart';

/// Represents a runtime instance of a user&#39;s milestone status. Live Milestone data should be combined with DestinyMilestoneDefinition data to show the user a picture of what is available for them to do in the game, and their status in regards to said &quot;things to do.&quot; Consider it a big, wonky to-do list, or Advisors 3.0 for those who remember the Destiny 1 API.
@JsonSerializable()
class DestinyMilestone {

	/// The unique identifier for the Milestone. Use it to look up the DestinyMilestoneDefinition, so you can combine the other data in this contract with static definition data.
	@JsonKey(name:'milestoneHash')
	int milestoneHash;

	/// Indicates what quests are available for this Milestone. Usually this will be only a single Quest, but some quests have multiple available that you can choose from at any given time. All possible quests for a milestone can be found in the DestinyMilestoneDefinition, but they must be combined with this Live data to determine which one(s) are actually active right now. It is possible for Milestones to not have any quests.
	@JsonKey(name:'availableQuests')
	List<DestinyMilestoneQuest> availableQuests;

	/// The currently active Activities in this milestone, when the Milestone is driven by Challenges.
	/// Not all Milestones have Challenges, but when they do this will indicate the Activities and Challenges under those Activities related to this Milestone.
	@JsonKey(name:'activities')
	List<DestinyMilestoneChallengeActivity> activities;

	/// Milestones may have arbitrary key&#x2F;value pairs associated with them, for data that users will want to know about but that doesn&#39;t fit neatly into any of the common components such as Quests. A good example of this would be - if this existed in Destiny 1 - the number of wins you currently have on your Trials of Osiris ticket. Looking in the DestinyMilestoneDefinition, you can use the string identifier of this dictionary to look up more info about the value, including localized string content for displaying the value. The value in the dictionary is the floating point number. The definition will tell you how to format this number.
	@JsonKey(name:'values')
	Map<String, double> values;

	/// A milestone may have one or more active vendors that are &quot;related&quot; to it (that provide rewards, or that are the initiators of the Milestone). I already regret this, even as I&#39;m typing it. [I told you I&#39;d regret this] You see, sometimes a milestone may be directly correlated with a set of vendors that provide varying tiers of rewards. The player may not be able to interact with one or more of those vendors. This will return the hashes of the Vendors that the player *can* interact with, allowing you to show their current inventory as rewards or related items to the Milestone or its activities.
	/// Before we even use it, it&#39;s already deprecated! How much of a bummer is that? We need more data.
	@JsonKey(name:'vendorHashes')
	List<int> vendorHashes;

	/// Replaces vendorHashes, which I knew was going to be trouble the day it walked in the door. This will return not only what Vendors are active and relevant to the activity (in an implied order that you can choose to ignore), but also other data - for example, if the Vendor is featuring a specific item relevant to this event that you should show with them.
	@JsonKey(name:'vendors')
	List<DestinyMilestoneVendor> vendors;

	/// If the entity to which this component is attached has known active Rewards for the player, this will detail information about those rewards, keyed by the RewardEntry Hash. (See DestinyMilestoneDefinition for more information about Reward Entries) Note that these rewards are not for the Quests related to the Milestone. Think of these as &quot;overview&#x2F;checklist&quot; rewards that may be provided for Milestones that may provide rewards for performing a variety of tasks that aren&#39;t under a specific Quest.
	@JsonKey(name:'rewards')
	List<DestinyMilestoneRewardCategory> rewards;

	/// If known, this is the date when the event last began or refreshed. It will only be populated for events with fixed and repeating start and end dates.
	@JsonKey(name:'startDate')
	String startDate;

	/// If known, this is the date when the event will next end or repeat. It will only be populated for events with fixed and repeating start and end dates.
	@JsonKey(name:'endDate')
	String endDate;

	/// Used for ordering milestones in a display to match how we order them in BNet. May pull from static data, or possibly in the future from dynamic information.
	@JsonKey(name:'order')
	int order;
	DestinyMilestone();

	factory DestinyMilestone.fromJson(Map<String, dynamic> json) => _$DestinyMilestoneFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneToJson(this);
}
