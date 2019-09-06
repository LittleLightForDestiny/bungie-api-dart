import 'destiny_leaderboard_entry.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_leaderboard.g.dart';

@JsonSerializable()
class DestinyLeaderboard {

	@JsonKey(name:'statId')
	String statId;

	@JsonKey(name:'entries')
	List<DestinyLeaderboardEntry> entries;
	DestinyLeaderboard();

	factory DestinyLeaderboard.fromJson(Map<String, dynamic> json) => _$DestinyLeaderboardFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyLeaderboardToJson(this);
}
