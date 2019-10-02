
import 'package:json_annotation/json_annotation.dart';
part 'destiny_progression_reward_item_quantity.g.dart';

@JsonSerializable()
class DestinyProgressionRewardItemQuantity{
	
	@JsonKey(name:'rewardedAtProgressionLevel')
	int rewardedAtProgressionLevel;
	
	@JsonKey(name:'acquisitionBehavior')
	int acquisitionBehavior;
	
	@JsonKey(name:'uiDisplayStyle')
	String uiDisplayStyle;
	
	@JsonKey(name:'claimUnlockDisplayStrings')
	List<String> claimUnlockDisplayStrings;
	
	/// The hash identifier for the item in question. Use it to look up the item&#39;s DestinyInventoryItemDefinition.
	@JsonKey(name:'itemHash')
	int itemHash;
	
	/// If this quantity is referring to a specific instance of an item, this will have the item&#39;s instance ID. Normally, this will be null.
	@JsonKey(name:'itemInstanceId')
	String itemInstanceId;
	
	/// The amount of the item needed&#x2F;available depending on the context of where DestinyItemQuantity is being used.
	@JsonKey(name:'quantity')
	int quantity;
	DestinyProgressionRewardItemQuantity();

	factory DestinyProgressionRewardItemQuantity.fromJson(Map<String, dynamic> json) => _$DestinyProgressionRewardItemQuantityFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyProgressionRewardItemQuantityToJson(this);
}