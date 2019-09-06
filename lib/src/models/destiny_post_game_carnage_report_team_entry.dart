import 'destiny_historical_stats_value.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_post_game_carnage_report_team_entry.g.dart';

@JsonSerializable()
class DestinyPostGameCarnageReportTeamEntry {

	/// Integer ID for the team.
	@JsonKey(name:'teamId')
	int teamId;

	/// Team&#39;s standing relative to other teams.
	@JsonKey(name:'standing')
	DestinyHistoricalStatsValue standing;

	/// Score earned by the team
	@JsonKey(name:'score')
	DestinyHistoricalStatsValue score;

	/// Alpha or Bravo
	@JsonKey(name:'teamName')
	String teamName;
	DestinyPostGameCarnageReportTeamEntry();

	factory DestinyPostGameCarnageReportTeamEntry.fromJson(Map<String, dynamic> json) => _$DestinyPostGameCarnageReportTeamEntryFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyPostGameCarnageReportTeamEntryToJson(this);
}
