import 'destiny_historical_stats_value.dart';
import 'destiny_player.dart';
import 'destiny_historical_stats_value.dart';
import 'destiny_post_game_carnage_report_extended_data.dart';
class DestinyPostGameCarnageReportEntry{
	int standing;
	DestinyHistoricalStatsValue score;
	DestinyPlayer player;
	String characterId;
	Map<DestinyHistoricalStatsValue, dynamic> values;
	DestinyPostGameCarnageReportExtendedData extended;
	DestinyPostGameCarnageReportEntry(
		int this.standing,
		DestinyHistoricalStatsValue this.score,
		DestinyPlayer this.player,
		String this.characterId,
		Map<DestinyHistoricalStatsValue, dynamic> this.values,
		DestinyPostGameCarnageReportExtendedData this.extended,
	);

	static DestinyPostGameCarnageReportEntry fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPostGameCarnageReportEntry(
				data['standing'],
				data['score'],
				data['player'],
				data['characterId'],
				data['values'],
				data['extended'],
		);
	}

	static List<DestinyPostGameCarnageReportEntry> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPostGameCarnageReportEntry> list = new List();
    data.forEach((item) {
      list.add(DestinyPostGameCarnageReportEntry.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['standing'] = this.standing;
			data['score'] = this.score;
			data['player'] = this.player;
			data['characterId'] = this.characterId;
			data['values'] = this.values;
			data['extended'] = this.extended;
		return data;
	}
}