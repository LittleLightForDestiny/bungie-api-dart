import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_public_milestone_challenge.g.dart';

/// A Milestone can have many Challenges. Challenges are just extra Objectives that provide a fun way to mix-up play and provide extra rewards.
@JsonSerializable()
class DestinyPublicMilestoneChallenge{	
	DestinyPublicMilestoneChallenge();

	
	/// The objective for the Challenge, which should have human-readable data about what needs to be done to accomplish the objective. Use this hash to look up the DestinyObjectiveDefinition.
	@JsonKey(name:'objectiveHash')
	int? objectiveHash;
	
	/// IF the Objective is related to a specific Activity, this will be that activity's hash. Use it to look up the DestinyActivityDefinition for additional data to show.
	@JsonKey(name:'activityHash')
	int? activityHash;

	factory DestinyPublicMilestoneChallenge.fromJson(Map<String, dynamic> json) {
		return _$DestinyPublicMilestoneChallengeFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPublicMilestoneChallengeToJson(this);

	static Future<DestinyPublicMilestoneChallenge> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyPublicMilestoneChallenge>((json)=>DestinyPublicMilestoneChallenge.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}