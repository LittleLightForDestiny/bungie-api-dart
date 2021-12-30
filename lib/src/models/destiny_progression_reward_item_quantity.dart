import 'package:json_annotation/json_annotation.dart';

import '../enums/destiny_progression_reward_item_acquisition_behavior.dart';

part 'destiny_progression_reward_item_quantity.g.dart';

@JsonSerializable()
class DestinyProgressionRewardItemQuantity{	
	DestinyProgressionRewardItemQuantity();

	factory DestinyProgressionRewardItemQuantity.fromJson(Map<String, dynamic> json) {
		return _$DestinyProgressionRewardItemQuantityFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyProgressionRewardItemQuantityToJson(this);
	
	@JsonKey(name:'rewardedAtProgressionLevel')
	int? rewardedAtProgressionLevel;
	
	@JsonKey(name:'acquisitionBehavior',unknownEnumValue:DestinyProgressionRewardItemAcquisitionBehavior.ProtectedInvalidEnumValue)
	DestinyProgressionRewardItemAcquisitionBehavior? acquisitionBehavior;
	
	@JsonKey(name:'uiDisplayStyle')
	String? uiDisplayStyle;
	
	@JsonKey(name:'claimUnlockDisplayStrings')
	List<String>? claimUnlockDisplayStrings;
	
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
}