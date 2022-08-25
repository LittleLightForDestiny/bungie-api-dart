import 'package:json_annotation/json_annotation.dart';

import 'destiny_historical_stats_activity.dart';
import 'destiny_post_game_carnage_report_entry.dart';
import 'destiny_post_game_carnage_report_team_entry.dart';

part 'destiny_post_game_carnage_report_data.g.dart';

@JsonSerializable()
class DestinyPostGameCarnageReportData{	
	DestinyPostGameCarnageReportData();

	factory DestinyPostGameCarnageReportData.fromJson(Map<String, dynamic> json) {
		return _$DestinyPostGameCarnageReportDataFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPostGameCarnageReportDataToJson(this);
	
	/// Date and time for the activity.
	@JsonKey(name:'period')
	String? period;
	
	/// If this activity has "phases", this is the phase at which the activity was started. This value is only valid for activities before the Beyond Light expansion shipped. Subsequent activities will not have a valid value here.
	@JsonKey(name:'startingPhaseIndex')
	int? startingPhaseIndex;
	
	/// True if the activity was started from the beginning, if that information is available and the activity was played post Witch Queen release.
	@JsonKey(name:'activityWasStartedFromBeginning')
	bool? activityWasStartedFromBeginning;
	
	/// Details about the activity.
	@JsonKey(name:'activityDetails')
	DestinyHistoricalStatsActivity? activityDetails;
	
	/// Collection of players and their data for this activity.
	@JsonKey(name:'entries')
	List<DestinyPostGameCarnageReportEntry>? entries;
	
	/// Collection of stats for the player in this activity.
	@JsonKey(name:'teams')
	List<DestinyPostGameCarnageReportTeamEntry>? teams;
}