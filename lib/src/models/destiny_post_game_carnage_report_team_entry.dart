import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_historical_stats_value.dart';

part 'destiny_post_game_carnage_report_team_entry.g.dart';

@JsonSerializable()
class DestinyPostGameCarnageReportTeamEntry{	
	DestinyPostGameCarnageReportTeamEntry();

	
	/// Integer ID for the team.
	@JsonKey(name:'teamId')
	int? teamId;
	
	/// Team's standing relative to other teams.
	@JsonKey(name:'standing')
	DestinyHistoricalStatsValue? standing;
	
	/// Score earned by the team
	@JsonKey(name:'score')
	DestinyHistoricalStatsValue? score;
	
	/// Alpha or Bravo
	@JsonKey(name:'teamName')
	String? teamName;

	factory DestinyPostGameCarnageReportTeamEntry.fromJson(Map<String, dynamic> json) {
		return _$DestinyPostGameCarnageReportTeamEntryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPostGameCarnageReportTeamEntryToJson(this);

	static Future<DestinyPostGameCarnageReportTeamEntry> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyPostGameCarnageReportTeamEntry>((json)=>DestinyPostGameCarnageReportTeamEntry.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}