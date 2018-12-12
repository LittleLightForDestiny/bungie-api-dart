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
		String this.period,
		int this.startingPhaseIndex,
		DestinyHistoricalStatsActivity this.activityDetails,
		List<DestinyPostGameCarnageReportEntry> this.entries,
		List<DestinyPostGameCarnageReportTeamEntry> this.teams,
	);

	static DestinyPostGameCarnageReportData fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPostGameCarnageReportData(
				data['period'],
				data['startingPhaseIndex'],
				data['activityDetails'],
				DestinyPostGameCarnageReportEntry.fromList(data['entries']),
				DestinyPostGameCarnageReportTeamEntry.fromList(data['teams']),
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
			data['entries'] = this.entries.map((item)=>item.toMap());
			data['teams'] = this.teams.map((item)=>item.toMap());
		return data;
	}
}