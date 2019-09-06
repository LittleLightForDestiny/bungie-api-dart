import 'destiny_item_quantity.dart';
import 'destiny_display_properties_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_milestone_reward_entry_definition.g.dart';

/// The definition of a specific reward, which may be contained in a category of rewards and that has optional information about how it is obtained.
@JsonSerializable()
class DestinyMilestoneRewardEntryDefinition {

	/// The identifier for this reward entry. Runtime data will refer to reward entries by this hash. Only guaranteed unique within the specific Milestone.
	@JsonKey(name:'rewardEntryHash')
	int rewardEntryHash;

	/// The string identifier, if you care about it. Only guaranteed unique within the specific Milestone.
	@JsonKey(name:'rewardEntryIdentifier')
	String rewardEntryIdentifier;

	/// The items you will get as rewards, and how much of it you&#39;ll get.
	@JsonKey(name:'items')
	List<DestinyItemQuantity> items;

	/// If this reward is redeemed at a Vendor, this is the hash of the Vendor to go to in order to redeem the reward. Use this hash to look up the DestinyVendorDefinition.
	@JsonKey(name:'vendorHash')
	int vendorHash;

	/// For us to bother returning this info, we should be able to return some kind of information about why these rewards are grouped together. This is ideally that information. Look at how confident I am that this will always remain true.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	/// If you want to follow BNet&#39;s ordering of these rewards, use this number within a given category to order the rewards. Yeah, I know. I feel dirty too.
	@JsonKey(name:'order')
	int order;
	DestinyMilestoneRewardEntryDefinition();

	factory DestinyMilestoneRewardEntryDefinition.fromJson(Map<String, dynamic> json) => _$DestinyMilestoneRewardEntryDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneRewardEntryDefinitionToJson(this);
}
