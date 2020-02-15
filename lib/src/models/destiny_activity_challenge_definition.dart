import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_quantity.dart';

part 'destiny_activity_challenge_definition.g.dart';

/// Represents a reference to a Challenge, which for now is just an Objective.
@JsonSerializable()
class DestinyActivityChallengeDefinition{
	
	DestinyActivityChallengeDefinition();

	factory DestinyActivityChallengeDefinition.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyActivityChallengeDefinitionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The hash for the Objective that matches this challenge. Use it to look up the DestinyObjectiveDefinition.
	@JsonKey(name:'objectiveHash')
	int objectiveHash;
	/// The rewards as they're represented in the UI. Note that they generally link to "dummy" items that give a summary of rewards rather than direct, real items themselves.
	/// If the quantity is 0, don't show the quantity.
	@JsonKey(name:'dummyRewards')
	List<DestinyItemQuantity> dummyRewards;

	
	
	Map<String, dynamic> toJson() => _$DestinyActivityChallengeDefinitionToJson(this);
}