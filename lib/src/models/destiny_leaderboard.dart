import 'package:json_annotation/json_annotation.dart';

import 'destiny_leaderboard_entry.dart';

part 'destiny_leaderboard.g.dart';

@JsonSerializable()
class DestinyLeaderboard{	
	DestinyLeaderboard();

	factory DestinyLeaderboard.fromJson(Map<String, dynamic> json) {
		return _$DestinyLeaderboardFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyLeaderboardToJson(this);
	
	@JsonKey(name:'statId')
	String? statId;
	
	@JsonKey(name:'entries')
	List<DestinyLeaderboardEntry>? entries;
}