
import 'package:json_annotation/json_annotation.dart';
part 'destiny_milestone_quest_reward_item.g.dart';

/// A subclass of DestinyItemQuantity, that provides not just the item and its quantity but also information that BNet can - at some point - use internally to provide more robust runtime information about the item&#39;s qualities.
/// If you want it, please ask! We&#39;re just out of time to wire it up right now. Or a clever person just may do it with our existing endpoints.
@JsonSerializable()
class DestinyMilestoneQuestRewardItem {

	/// The quest reward item *may* be associated with a vendor. If so, this is that vendor. Use this hash to look up the DestinyVendorDefinition.
	@JsonKey(name:'vendorHash')
	int vendorHash;

	/// The quest reward item *may* be associated with a vendor. If so, this is the index of the item being sold, which we can use at runtime to find instanced item information for the reward item.
	@JsonKey(name:'vendorItemIndex')
	int vendorItemIndex;

	/// The hash identifier for the item in question. Use it to look up the item&#39;s DestinyInventoryItemDefinition.
	@JsonKey(name:'itemHash')
	int itemHash;

	/// If this quantity is referring to a specific instance of an item, this will have the item&#39;s instance ID. Normally, this will be null.
	@JsonKey(name:'itemInstanceId')
	String itemInstanceId;

	/// The amount of the item needed&#x2F;available depending on the context of where DestinyItemQuantity is being used.
	@JsonKey(name:'quantity')
	int quantity;
	DestinyMilestoneQuestRewardItem();

	factory DestinyMilestoneQuestRewardItem.fromJson(Map<String, dynamic> json) => _$DestinyMilestoneQuestRewardItemFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneQuestRewardItemToJson(this);
}
