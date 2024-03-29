import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_player.dart';
import 'destiny_historical_stats_value.dart';

part 'destiny_leaderboard_entry.g.dart';

@JsonSerializable()
class DestinyLeaderboardEntry{	
	DestinyLeaderboardEntry();

	
	/// Where this player ranks on the leaderboard. A value of 1 is the top rank.
	@JsonKey(name:'rank')
	int? rank;
	
	/// Identity details of the player
	@JsonKey(name:'player')
	DestinyPlayer? player;
	
	/// ID of the player's best character for the reported stat.
	@JsonKey(name:'characterId')
	String? characterId;
	
	/// Value of the stat for this player
	@JsonKey(name:'value')
	DestinyHistoricalStatsValue? value;

	factory DestinyLeaderboardEntry.fromJson(Map<String, dynamic> json) {
		return _$DestinyLeaderboardEntryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyLeaderboardEntryToJson(this);

	static Future<DestinyLeaderboardEntry> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyLeaderboardEntry>((json)=>DestinyLeaderboardEntry.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}