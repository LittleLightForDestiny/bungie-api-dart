import 'package:json_annotation/json_annotation.dart';


part 'destiny_progression_reward_definition.g.dart';

/// Inventory Items can reward progression when actions are performed on them. A common example of this in Destiny 1 was Bounties, which would reward Experience on your Character and the like when you completed the bounty.
/// Note that this maps to a DestinyProgressionMappingDefinition, and *not* a DestinyProgressionDefinition directly. This is apparently so that multiple progressions can be granted progression points&#x2F;experience at the same time.
@JsonSerializable()
class DestinyProgressionRewardDefinition{
	
	DestinyProgressionRewardDefinition();

	factory DestinyProgressionRewardDefinition.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyProgressionRewardDefinitionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The hash identifier of the DestinyProgressionMappingDefinition that contains the progressions for which experience should be applied.
	@JsonKey(name:'progressionMappingHash')
	int progressionMappingHash;
	/// The amount of experience to give to each of the mapped progressions.
	@JsonKey(name:'amount')
	int amount;
	/// If true, the game's internal mechanisms to throttle progression should be applied.
	@JsonKey(name:'applyThrottles')
	bool applyThrottles;

	
	
	Map<String, dynamic> toJson() => _$DestinyProgressionRewardDefinitionToJson(this);
}