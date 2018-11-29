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

	static DestinyPostGameCarnageReportData fromJson(Map<String, dynamic> data){
		return new DestinyPostGameCarnageReportData(
				data['period'],
				data['startingPhaseIndex'],
				data['activityDetails'],
				DestinyPostGameCarnageReportEntry.fromList(data['entries']),
				DestinyPostGameCarnageReportTeamEntry.fromList(data['teams']),
		);
	}

	static List<DestinyPostGameCarnageReportData> fromList(List<dynamic> data){
		List<DestinyPostGameCarnageReportData> list = new List();
    data.forEach((item) {
      list.add(DestinyPostGameCarnageReportData.fromJson(item));
    });
    return list;
	}
}