import 'destiny_historical_stats_value.dart';
class DestinyPostGameCarnageReportTeamEntry{
	int teamId;
	DestinyHistoricalStatsValue standing;
	DestinyHistoricalStatsValue score;
	String teamName;
	DestinyPostGameCarnageReportTeamEntry(
		this.teamId,
		this.standing,
		this.score,
		this.teamName,
	);

	static DestinyPostGameCarnageReportTeamEntry fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPostGameCarnageReportTeamEntry(
				data['teamId'],
				data['standing'] != null ? DestinyHistoricalStatsValue.fromMap(data['standing']) : null,
				data['score'] != null ? DestinyHistoricalStatsValue.fromMap(data['score']) : null,
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