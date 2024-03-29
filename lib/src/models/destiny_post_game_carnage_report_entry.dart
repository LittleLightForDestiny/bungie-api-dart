import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_historical_stats_value.dart';
import 'destiny_player.dart';
import 'destiny_post_game_carnage_report_extended_data.dart';

part 'destiny_post_game_carnage_report_entry.g.dart';

@JsonSerializable()
class DestinyPostGameCarnageReportEntry{	
	DestinyPostGameCarnageReportEntry();

	
	/// Standing of the player
	@JsonKey(name:'standing')
	int? standing;
	
	/// Score of the player if available
	@JsonKey(name:'score')
	DestinyHistoricalStatsValue? score;
	
	/// Identity details of the player
	@JsonKey(name:'player')
	DestinyPlayer? player;
	
	/// ID of the player's character used in the activity.
	@JsonKey(name:'characterId')
	String? characterId;
	
	/// Collection of stats for the player in this activity.
	@JsonKey(name:'values')
	Map<String, DestinyHistoricalStatsValue>? values;
	
	/// Extended data extracted from the activity blob.
	@JsonKey(name:'extended')
	DestinyPostGameCarnageReportExtendedData? extended;

	factory DestinyPostGameCarnageReportEntry.fromJson(Map<String, dynamic> json) {
		return _$DestinyPostGameCarnageReportEntryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPostGameCarnageReportEntryToJson(this);

	static Future<DestinyPostGameCarnageReportEntry> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyPostGameCarnageReportEntry>((json)=>DestinyPostGameCarnageReportEntry.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}