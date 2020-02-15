import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_quantity.dart';

part 'destiny_public_activity_status.g.dart';

/// Represents the public-facing status of an activity: any data about what is currently active in the Activity, regardless of an individual character&#39;s progress in it.
@JsonSerializable()
class DestinyPublicActivityStatus{
	
	DestinyPublicActivityStatus();

	factory DestinyPublicActivityStatus.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyPublicActivityStatusFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// Active Challenges for the activity, if any - represented as hashes for DestinyObjectiveDefinitions.
	@JsonKey(name:'challengeObjectiveHashes')
	List<int> challengeObjectiveHashes;
	/// The active modifiers on this activity, if any - represented as hashes for DestinyActivityModifierDefinitions.
	@JsonKey(name:'modifierHashes')
	List<int> modifierHashes;
	/// If the activity itself provides any specific "mock" rewards, this will be the items and their quantity.
	/// Why "mock", you ask? Because these are the rewards as they are represented in the tooltip of the Activity.
	/// These are often pointers to fake items that look good in a tooltip, but represent an abstract concept of what you will get for a reward rather than the specific items you may obtain.
	@JsonKey(name:'rewardTooltipItems')
	List<DestinyItemQuantity> rewardTooltipItems;

	
	
	Map<String, dynamic> toJson() => _$DestinyPublicActivityStatusToJson(this);
}