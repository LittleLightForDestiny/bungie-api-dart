
import 'package:json_annotation/json_annotation.dart';
part 'destiny_public_milestone_challenge.g.dart';

/// A Milestone can have many Challenges. Challenges are just extra Objectives that provide a fun way to mix-up play and provide extra rewards.
@JsonSerializable()
class DestinyPublicMilestoneChallenge {

	/// The objective for the Challenge, which should have human-readable data about what needs to be done to accomplish the objective. Use this hash to look up the DestinyObjectiveDefinition.
	@JsonKey(name:'objectiveHash')
	int objectiveHash;

	/// IF the Objective is related to a specific Activity, this will be that activity&#39;s hash. Use it to look up the DestinyActivityDefinition for additional data to show.
	@JsonKey(name:'activityHash')
	int activityHash;
	DestinyPublicMilestoneChallenge();

	factory DestinyPublicMilestoneChallenge.fromJson(Map<String, dynamic> json) => _$DestinyPublicMilestoneChallengeFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyPublicMilestoneChallengeToJson(this);
}
