import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_stat.dart';
import '../enums/item_state.dart';

part 'destiny_progression_reward_item_socket_override_state.g.dart';

/// Represents the stats and item state if applicable for progression reward items with socket overrides
@JsonSerializable()
class DestinyProgressionRewardItemSocketOverrideState{	
	DestinyProgressionRewardItemSocketOverrideState();

	
	/// Information about the computed stats from socket and plug overrides for this progression, if there is any data for it.
	@JsonKey(name:'rewardItemStats')
	Map<String, DestinyStat>? rewardItemStats;
	
	/// Information about the item state, specifically deepsight if there is any data for it
	@JsonKey(name:'itemState')
	ItemState? itemState;

	factory DestinyProgressionRewardItemSocketOverrideState.fromJson(Map<String, dynamic> json) {
		return _$DestinyProgressionRewardItemSocketOverrideStateFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyProgressionRewardItemSocketOverrideStateToJson(this);

	static Future<DestinyProgressionRewardItemSocketOverrideState> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyProgressionRewardItemSocketOverrideState>((json)=>DestinyProgressionRewardItemSocketOverrideState.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}