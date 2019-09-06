import 'destiny_historical_stats_value.dart';
import 'destiny_player.dart';
import 'destiny_post_game_carnage_report_extended_data.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_post_game_carnage_report_entry.g.dart';

@JsonSerializable()
class DestinyPostGameCarnageReportEntry {

	/// Standing of the player
	@JsonKey(name:'standing')
	int standing;

	/// Score of the player if available
	@JsonKey(name:'score')
	DestinyHistoricalStatsValue score;

	/// Identity details of the player
	@JsonKey(name:'player')
	DestinyPlayer player;

	/// ID of the player&#39;s character used in the activity.
	@JsonKey(name:'characterId')
	String characterId;

	/// Collection of stats for the player in this activity.
	@JsonKey(name:'values')
	Map<String, DestinyHistoricalStatsValue> values;

	/// Extended data extracted from the activity blob.
	@JsonKey(name:'extended')
	DestinyPostGameCarnageReportExtendedData extended;
	DestinyPostGameCarnageReportEntry();

	factory DestinyPostGameCarnageReportEntry.fromJson(Map<String, dynamic> json) => _$DestinyPostGameCarnageReportEntryFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyPostGameCarnageReportEntryToJson(this);
}
