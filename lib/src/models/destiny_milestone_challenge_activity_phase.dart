import 'package:json_annotation/json_annotation.dart';


part 'destiny_milestone_challenge_activity_phase.g.dart';

@JsonSerializable()
class DestinyMilestoneChallengeActivityPhase{	
	DestinyMilestoneChallengeActivityPhase();

	factory DestinyMilestoneChallengeActivityPhase.fromJson(Map<String, dynamic> json) {
		return _$DestinyMilestoneChallengeActivityPhaseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneChallengeActivityPhaseToJson(this);
	
	/// The hash identifier of the activity's phase.
	@JsonKey(name:'phaseHash')
	int? phaseHash;
}