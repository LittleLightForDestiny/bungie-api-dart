
import 'package:json_annotation/json_annotation.dart';
part 'destiny_milestone_reward_entry.g.dart';

/// The character-specific data for a milestone&#39;s reward entry. See DestinyMilestoneDefinition for more information about Reward Entries.
@JsonSerializable()
class DestinyMilestoneRewardEntry {

	/// The identifier for the reward entry in question. It is important to look up the related DestinyMilestoneRewardEntryDefinition to get the static details about the reward, which you can do by looking up the milestone&#39;s DestinyMilestoneDefinition and examining the DestinyMilestoneDefinition.rewards[rewardCategoryHash].rewardEntries[rewardEntryHash] data.
	@JsonKey(name:'rewardEntryHash')
	int rewardEntryHash;

	/// If TRUE, the player has earned this reward.
	@JsonKey(name:'earned')
	bool earned;

	/// If TRUE, the player has redeemed&#x2F;picked up&#x2F;obtained this reward. Feel free to alias this to &quot;gotTheShinyBauble&quot; in your own codebase.
	@JsonKey(name:'redeemed')
	bool redeemed;
	DestinyMilestoneRewardEntry();

	factory DestinyMilestoneRewardEntry.fromJson(Map<String, dynamic> json) => _$DestinyMilestoneRewardEntryFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneRewardEntryToJson(this);
}
