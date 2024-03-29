import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_milestone_quest_reward_item.g.dart';

/// A subclass of DestinyItemQuantity, that provides not just the item and its quantity but also information that BNet can - at some point - use internally to provide more robust runtime information about the item&#39;s qualities.
/// If you want it, please ask! We&#39;re just out of time to wire it up right now. Or a clever person just may do it with our existing endpoints.
@JsonSerializable()
class DestinyMilestoneQuestRewardItem{	
	DestinyMilestoneQuestRewardItem();

	
	/// The quest reward item *may* be associated with a vendor. If so, this is that vendor. Use this hash to look up the DestinyVendorDefinition.
	@JsonKey(name:'vendorHash')
	int? vendorHash;
	
	/// The quest reward item *may* be associated with a vendor. If so, this is the index of the item being sold, which we can use at runtime to find instanced item information for the reward item.
	@JsonKey(name:'vendorItemIndex')
	int? vendorItemIndex;
	
	/// The hash identifier for the item in question. Use it to look up the item's DestinyInventoryItemDefinition.
	@JsonKey(name:'itemHash')
	int? itemHash;
	
	/// If this quantity is referring to a specific instance of an item, this will have the item's instance ID. Normally, this will be null.
	@JsonKey(name:'itemInstanceId')
	String? itemInstanceId;
	
	/// The amount of the item needed/available depending on the context of where DestinyItemQuantity is being used.
	@JsonKey(name:'quantity')
	int? quantity;
	
	/// Indicates that this item quantity may be conditionally shown or hidden, based on various sources of state. For example: server flags, account state, or character progress.
	@JsonKey(name:'hasConditionalVisibility')
	bool? hasConditionalVisibility;

	factory DestinyMilestoneQuestRewardItem.fromJson(Map<String, dynamic> json) {
		return _$DestinyMilestoneQuestRewardItemFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneQuestRewardItemToJson(this);

	static Future<DestinyMilestoneQuestRewardItem> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyMilestoneQuestRewardItem>((json)=>DestinyMilestoneQuestRewardItem.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}