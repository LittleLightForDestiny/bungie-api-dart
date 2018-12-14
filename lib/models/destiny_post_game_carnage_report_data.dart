import 'destiny_historical_stats_activity.dart';
import 'destiny_post_game_carnage_report_entry.dart';
import 'destiny_post_game_carnage_report_team_entry.dart';
class DestinyPostGameCarnageReportData{
	String period;
	int startingPhaseIndex;
	DestinyHistoricalStatsActivity activityDetails;
	List<DestinyPostGameCarnageReportEntry> entries;
	List<DestinyPostGameCarnageReportTeamEntry> teams;
	DestinyPostGameCarnageReportData(
		this.period,
		this.startingPhaseIndex,
		this.activityDetails,
		this.entries,
		this.teams,
	);

	static DestinyPostGameCarnageReportData fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPostGameCarnageReportData(
				data['period'],
				data['startingPhaseIndex'],
				data['activityDetails'] != null ? DestinyHistoricalStatsActivity.fromMap(data['activityDetails']) : null,
				data['entries'] != null ? DestinyPostGameCarnageReportEntry.fromList(data['entries']) : null,
				data['teams'] != null ? DestinyPostGameCarnageReportTeamEntry.fromList(data['teams']) : null,
		);
	}

	static List<DestinyPostGameCarnageReportData> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPostGameCarnageReportData> list = new List();
    data.forEach((item) {
      list.add(DestinyPostGameCarnageReportData.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['period'] = this.period;
			data['startingPhaseIndex'] = this.startingPhaseIndex;
			data['activityDetails'] = this.activityDetails;
			data['entries'] = this.entries.map((item)=>item.toMap()).toList();
			data['teams'] = this.teams.map((item)=>item.toMap()).toList();
		return data;
	}
}