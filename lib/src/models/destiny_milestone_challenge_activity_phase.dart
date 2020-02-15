import 'package:json_annotation/json_annotation.dart';


part 'destiny_milestone_challenge_activity_phase.g.dart';

@JsonSerializable()
class DestinyMilestoneChallengeActivityPhase{
	
	DestinyMilestoneChallengeActivityPhase();

	factory DestinyMilestoneChallengeActivityPhase.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyMilestoneChallengeActivityPhaseFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The hash identifier of the activity's phase.
	@JsonKey(name:'phaseHash')
	int phaseHash;

	
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneChallengeActivityPhaseToJson(this);
}