
import 'package:json_annotation/json_annotation.dart';
part 'destiny_leaderboard_results.g.dart';

@JsonSerializable()
class DestinyLeaderboardResults {

	/// Indicate the membership ID of the account that is the focal point of the provided leaderboards.
	@JsonKey(name:'focusMembershipId')
	String focusMembershipId;

	/// Indicate the character ID of the character that is the focal point of the provided leaderboards. May be null, in which case any character from the focus membership can appear in the provided leaderboards.
	@JsonKey(name:'focusCharacterId')
	String focusCharacterId;
	DestinyLeaderboardResults();

	factory DestinyLeaderboardResults.fromJson(Map<String, dynamic> json) => _$DestinyLeaderboardResultsFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyLeaderboardResultsToJson(this);
}
