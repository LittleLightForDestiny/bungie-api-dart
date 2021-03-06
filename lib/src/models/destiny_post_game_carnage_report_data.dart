import 'package:json_annotation/json_annotation.dart';

import 'destiny_historical_stats_activity.dart';
import 'destiny_post_game_carnage_report_entry.dart';
import 'destiny_post_game_carnage_report_team_entry.dart';

part 'destiny_post_game_carnage_report_data.g.dart';

@JsonSerializable()
class DestinyPostGameCarnageReportData{
	
	DestinyPostGameCarnageReportData();

	factory DestinyPostGameCarnageReportData.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyPostGameCarnageReportDataFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// Date and time for the activity.
	@JsonKey(name:'period')
	String period;
	/// If this activity has "phases", this is the phase at which the activity was started.
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

	
	
	Map<String, dynamic> toJson() => _$DestinyPostGameCarnageReportDataToJson(this);
}