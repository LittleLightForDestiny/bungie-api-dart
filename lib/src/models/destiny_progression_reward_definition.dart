import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_progression_reward_definition.g.dart';

/// Inventory Items can reward progression when actions are performed on them. A common example of this in Destiny 1 was Bounties, which would reward Experience on your Character and the like when you completed the bounty.
/// Note that this maps to a DestinyProgressionMappingDefinition, and *not* a DestinyProgressionDefinition directly. This is apparently so that multiple progressions can be granted progression points&#x2F;experience at the same time.
@JsonSerializable()
class DestinyProgressionRewardDefinition{	
	DestinyProgressionRewardDefinition();

	
	/// The hash identifier of the DestinyProgressionMappingDefinition that contains the progressions for which experience should be applied.
	@JsonKey(name:'progressionMappingHash')
	int? progressionMappingHash;
	
	/// The amount of experience to give to each of the mapped progressions.
	@JsonKey(name:'amount')
	int? amount;
	
	/// If true, the game's internal mechanisms to throttle progression should be applied.
	@JsonKey(name:'applyThrottles')
	bool? applyThrottles;

	factory DestinyProgressionRewardDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyProgressionRewardDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyProgressionRewardDefinitionToJson(this);

	static Future<DestinyProgressionRewardDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyProgressionRewardDefinition>((json)=>DestinyProgressionRewardDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}