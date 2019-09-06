
import 'package:json_annotation/json_annotation.dart';
part 'destiny_milestone_challenge_definition.g.dart';

@JsonSerializable()
class DestinyMilestoneChallengeDefinition {

	/// The challenge related to this milestone.
	@JsonKey(name:'challengeObjectiveHash')
	int challengeObjectiveHash;
	DestinyMilestoneChallengeDefinition();

	factory DestinyMilestoneChallengeDefinition.fromJson(Map<String, dynamic> json) => _$DestinyMilestoneChallengeDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneChallengeDefinitionToJson(this);
}
