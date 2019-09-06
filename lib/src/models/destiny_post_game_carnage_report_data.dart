import 'destiny_historical_stats_activity.dart';
import 'destiny_post_game_carnage_report_entry.dart';
import 'destiny_post_game_carnage_report_team_entry.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_post_game_carnage_report_data.g.dart';

@JsonSerializable()
class DestinyPostGameCarnageReportData {

	/// Date and time for the activity.
	@JsonKey(name:'period')
	String period;

	/// If this activity has &quot;phases&quot;, this is the phase at which the activity was started.
	@JsonKey(name:'startingPhaseIndex')
	int startingPhaseIndex;

	/// Details about the activity.
	@JsonKey(name:'activityDetails')
	DestinyHistoricalStatsActivity activityDetails;

	/// Collection of players and their data for this activity.
	@JsonKey(name:'entries')
	List<DestinyPostGameCarnageReportEntry> entries;

	/// Collection of stats for the player in this activity.
	@JsonKey(name:'teams')
	List<DestinyPostGameCarnageReportTeamEntry> teams;
	DestinyPostGameCarnageReportData();

	factory DestinyPostGameCarnageReportData.fromJson(Map<String, dynamic> json) => _$DestinyPostGameCarnageReportDataFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyPostGameCarnageReportDataToJson(this);
}
