import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_profile_transitory_current_activity.g.dart';

/// If you are playing in an activity, this is some information about it.
/// Note that we cannot guarantee any of this resembles what ends up in the PGCR in any way. They are sourced by two entirely separate systems with their own logic, and the one we source this data from should be considered non-authoritative in comparison.
@JsonSerializable()
class DestinyProfileTransitoryCurrentActivity{	
	DestinyProfileTransitoryCurrentActivity();

	
	/// When the activity started.
	@JsonKey(name:'startTime')
	String? startTime;
	
	/// If you're still in it but it "ended" (like when folks are dancing around the loot after they beat a boss), this is when the activity ended.
	@JsonKey(name:'endTime')
	String? endTime;
	
	/// This is what our non-authoritative source thought the score was.
	@JsonKey(name:'score')
	double? score;
	
	/// If you have human opponents, this is the highest opposing team's score.
	@JsonKey(name:'highestOpposingFactionScore')
	double? highestOpposingFactionScore;
	
	/// This is how many human or poorly crafted aimbot opponents you have.
	@JsonKey(name:'numberOfOpponents')
	int? numberOfOpponents;
	
	/// This is how many human or poorly crafted aimbots are on your team.
	@JsonKey(name:'numberOfPlayers')
	int? numberOfPlayers;

	factory DestinyProfileTransitoryCurrentActivity.fromJson(Map<String, dynamic> json) {
		return _$DestinyProfileTransitoryCurrentActivityFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyProfileTransitoryCurrentActivityToJson(this);

	static Future<DestinyProfileTransitoryCurrentActivity> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyProfileTransitoryCurrentActivity>((json)=>DestinyProfileTransitoryCurrentActivity.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}