import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_leaderboard_entry.dart';

part 'destiny_leaderboard.g.dart';

@JsonSerializable()
class DestinyLeaderboard{	
	DestinyLeaderboard();

	
	@JsonKey(name:'statId')
	String? statId;
	
	@JsonKey(name:'entries')
	List<DestinyLeaderboardEntry>? entries;

	factory DestinyLeaderboard.fromJson(Map<String, dynamic> json) {
		return _$DestinyLeaderboardFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyLeaderboardToJson(this);

	static Future<DestinyLeaderboard> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyLeaderboard>((json)=>DestinyLeaderboard.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}