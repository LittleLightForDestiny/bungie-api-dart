import 'destiny_historical_stats_value.dart';
import 'destiny_player.dart';
import 'destiny_historical_stats_value.dart';
import 'destiny_post_game_carnage_report_extended_data.dart';
class DestinyPostGameCarnageReportEntry{
	int standing;
	DestinyHistoricalStatsValue score;
	DestinyPlayer player;
	int characterId;
	Map<DestinyHistoricalStatsValue, dynamic> values;
	DestinyPostGameCarnageReportExtendedData extended;
	DestinyPostGameCarnageReportEntry(
		int this.standing,
		DestinyHistoricalStatsValue this.score,
		DestinyPlayer this.player,
		int this.characterId,
		Map<DestinyHistoricalStatsValue, dynamic> this.values,
		DestinyPostGameCarnageReportExtendedData this.extended,
	);

	static DestinyPostGameCarnageReportEntry fromJson(Map<String, dynamic> data){
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
      list.add(DestinyPostGameCarnageReportEntry.fromJson(item));
    });
    return list;
	}
}