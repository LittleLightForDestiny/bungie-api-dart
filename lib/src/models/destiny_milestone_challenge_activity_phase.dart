import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_milestone_challenge_activity_phase.g.dart';

@JsonSerializable()
class DestinyMilestoneChallengeActivityPhase{	
	DestinyMilestoneChallengeActivityPhase();

	
	/// The hash identifier of the activity's phase.
	@JsonKey(name:'phaseHash')
	int? phaseHash;

	factory DestinyMilestoneChallengeActivityPhase.fromJson(Map<String, dynamic> json) {
		return _$DestinyMilestoneChallengeActivityPhaseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneChallengeActivityPhaseToJson(this);

	static Future<DestinyMilestoneChallengeActivityPhase> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyMilestoneChallengeActivityPhase>((json)=>DestinyMilestoneChallengeActivityPhase.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}