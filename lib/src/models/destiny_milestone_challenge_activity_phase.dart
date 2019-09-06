
import 'package:json_annotation/json_annotation.dart';
part 'destiny_milestone_challenge_activity_phase.g.dart';

@JsonSerializable()
class DestinyMilestoneChallengeActivityPhase {

	/// The hash identifier of the activity&#39;s phase.
	@JsonKey(name:'phaseHash')
	int phaseHash;
	DestinyMilestoneChallengeActivityPhase();

	factory DestinyMilestoneChallengeActivityPhase.fromJson(Map<String, dynamic> json) => _$DestinyMilestoneChallengeActivityPhaseFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneChallengeActivityPhaseToJson(this);
}
