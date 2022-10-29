import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_milestone_challenge_definition.g.dart';

@JsonSerializable()
class DestinyMilestoneChallengeDefinition{	
	DestinyMilestoneChallengeDefinition();

	
	/// The challenge related to this milestone.
	@JsonKey(name:'challengeObjectiveHash')
	int? challengeObjectiveHash;

	factory DestinyMilestoneChallengeDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyMilestoneChallengeDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneChallengeDefinitionToJson(this);

	static Future<DestinyMilestoneChallengeDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyMilestoneChallengeDefinition>((json)=>DestinyMilestoneChallengeDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}