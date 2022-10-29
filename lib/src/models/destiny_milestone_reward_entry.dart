import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_milestone_reward_entry.g.dart';

/// The character-specific data for a milestone&#39;s reward entry. See DestinyMilestoneDefinition for more information about Reward Entries.
@JsonSerializable()
class DestinyMilestoneRewardEntry{	
	DestinyMilestoneRewardEntry();

	
	/// The identifier for the reward entry in question. It is important to look up the related DestinyMilestoneRewardEntryDefinition to get the static details about the reward, which you can do by looking up the milestone's DestinyMilestoneDefinition and examining the DestinyMilestoneDefinition.rewards[rewardCategoryHash].rewardEntries[rewardEntryHash] data.
	@JsonKey(name:'rewardEntryHash')
	int? rewardEntryHash;
	
	/// If TRUE, the player has earned this reward.
	@JsonKey(name:'earned')
	bool? earned;
	
	/// If TRUE, the player has redeemed/picked up/obtained this reward. Feel free to alias this to "gotTheShinyBauble" in your own codebase.
	@JsonKey(name:'redeemed')
	bool? redeemed;

	factory DestinyMilestoneRewardEntry.fromJson(Map<String, dynamic> json) {
		return _$DestinyMilestoneRewardEntryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneRewardEntryToJson(this);

	static Future<DestinyMilestoneRewardEntry> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyMilestoneRewardEntry>((json)=>DestinyMilestoneRewardEntry.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}