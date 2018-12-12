import 'destiny_historical_stats_value.dart';
import 'destiny_historical_stats_value.dart';
class DestinyPostGameCarnageReportTeamEntry{
	int teamId;
	DestinyHistoricalStatsValue standing;
	DestinyHistoricalStatsValue score;
	String teamName;
	DestinyPostGameCarnageReportTeamEntry(
		int this.teamId,
		DestinyHistoricalStatsValue this.standing,
		DestinyHistoricalStatsValue this.score,
		String this.teamName,
	);

	static DestinyPostGameCarnageReportTeamEntry fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPostGameCarnageReportTeamEntry(
				data['teamId'],
				data['standing'],
				data['score'],
				data['teamName'],
		);
	}

	static List<DestinyPostGameCarnageReportTeamEntry> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPostGameCarnageReportTeamEntry> list = new List();
    data.forEach((item) {
      list.add(DestinyPostGameCarnageReportTeamEntry.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['teamId'] = this.teamId;
			data['standing'] = this.standing;
			data['score'] = this.score;
			data['teamName'] = this.teamName;
		return data;
	}
}