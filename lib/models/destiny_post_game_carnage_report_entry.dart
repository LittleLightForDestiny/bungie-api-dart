import 'destiny_historical_stats_value.dart';
import 'destiny_player.dart';
import 'destiny_post_game_carnage_report_extended_data.dart';

/**  */
class DestinyPostGameCarnageReportEntry{
	
	/** Standing of the player */
	int standing;
	
	/** Score of the player if available */
	DestinyHistoricalStatsValue score;
	
	/** Identity details of the player */
	DestinyPlayer player;
	
	/** ID of the player's character used in the activity. */
	String characterId;
	
	/** Collection of stats for the player in this activity. */
	Map<String, DestinyHistoricalStatsValue> values;
	
	/** Extended data extracted from the activity blob. */
	DestinyPostGameCarnageReportExtendedData extended;
	DestinyPostGameCarnageReportEntry(
		this.standing,
		this.score,
		this.player,
		this.characterId,
		this.values,
		this.extended,
	);

	static DestinyPostGameCarnageReportEntry fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPostGameCarnageReportEntry(
				data['standing'],
				data['score'] != null ? DestinyHistoricalStatsValue.fromMap(data['score']) : null,
				data['player'] != null ? DestinyPlayer.fromMap(data['player']) : null,
				data['characterId'],
				data['values'] != null ? Map<String, DestinyHistoricalStatsValue>.from(data['values'].map((k, v)=>MapEntry(k, DestinyHistoricalStatsValue.fromMap(v)))) : null,
				data['extended'] != null ? DestinyPostGameCarnageReportExtendedData.fromMap(data['extended']) : null,
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