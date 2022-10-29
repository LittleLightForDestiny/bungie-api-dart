import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_objective_progress.dart';

part 'destiny_challenge_status.g.dart';

/// Represents the status and other related information for a challenge that is - or was - available to a player. 
/// A challenge is a bonus objective, generally tacked onto Quests or Activities, that provide additional variations on play.
@JsonSerializable()
class DestinyChallengeStatus{	
	DestinyChallengeStatus();

	
	/// The progress - including completion status - of the active challenge.
	@JsonKey(name:'objective')
	DestinyObjectiveProgress? objective;

	factory DestinyChallengeStatus.fromJson(Map<String, dynamic> json) {
		return _$DestinyChallengeStatusFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyChallengeStatusToJson(this);

	static Future<DestinyChallengeStatus> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyChallengeStatus>((json)=>DestinyChallengeStatus.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}