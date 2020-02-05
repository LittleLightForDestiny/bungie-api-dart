import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_quantity.dart';

part 'destiny_activity_reward_definition.g.dart';

/// Activities can refer to one or more sets of tooltip-friendly reward data. These are the definitions for those tooltip friendly rewards.
@JsonSerializable()
class DestinyActivityRewardDefinition{
	
	DestinyActivityRewardDefinition();

	factory DestinyActivityRewardDefinition.fromJson(Map<String, dynamic> json) => _$DestinyActivityRewardDefinitionFromJson(json);

	/// The header for the reward set, if any.
	@JsonKey(name:'rewardText')
	String rewardText;
	/// The "Items provided" in the reward. This is almost always a pointer to a DestinyInventoryItemDefintion for an item that you can't actually earn in-game, but that has name/description/icon information for the vague concept of the rewards you will receive. This is because the actual reward generation is non-deterministic and extremely complicated, so the best the game can do is tell you what you'll get in vague terms. And so too shall we.
	/// Interesting trivia: you actually *do* earn these items when you complete the activity. They go into a single-slot bucket on your profile, which is how you see the pop-ups of these rewards when you complete an activity that match these "dummy" items. You can even see them if you look at the last one you earned in your profile-level inventory through the BNet API! Who said reading documentation is a waste of time?
	@JsonKey(name:'rewardItems')
	List<DestinyItemQuantity> rewardItems;

	
	
	Map<String, dynamic> toJson() => _$DestinyActivityRewardDefinitionToJson(this);
}