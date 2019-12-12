import 'package:json_annotation/json_annotation.dart';


part 'destiny_milestone_challenge_definition.g.dart';

@JsonSerializable()
class DestinyMilestoneChallengeDefinition{
	
	DestinyMilestoneChallengeDefinition();

	factory DestinyMilestoneChallengeDefinition.fromJson(Map<String, dynamic> json) => _$DestinyMilestoneChallengeDefinitionFromJson(json);

	/// The challenge related to this milestone.
	@JsonKey(name:'challengeObjectiveHash')
	int challengeObjectiveHash;

	
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneChallengeDefinitionToJson(this);
}