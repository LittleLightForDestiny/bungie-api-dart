import 'destiny_player.dart';
import 'destiny_historical_stats_value.dart';

/**  */
class DestinyLeaderboardEntry{
	
	/** Where this player ranks on the leaderboard. A value of 1 is the top rank. */
	int rank;
	
	/** Identity details of the player */
	DestinyPlayer player;
	
	/** ID of the player's best character for the reported stat. */
	String characterId;
	
	/** Value of the stat for this player */
	DestinyHistoricalStatsValue value;
	DestinyLeaderboardEntry(
		this.rank,
		this.player,
		this.characterId,
		this.value,
	);

	static DestinyLeaderboardEntry fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyLeaderboardEntry(
				data['rank'],
				data['player'] != null ? DestinyPlayer.fromMap(data['player']) : null,
				data['characterId'],
				data['value'] != null ? DestinyHistoricalStatsValue.fromMap(data['value']) : null,
		);
	}

	static List<DestinyLeaderboardEntry> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyLeaderboardEntry> list = new List();
    data.forEach((item) {
      list.add(DestinyLeaderboardEntry.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['rank'] = this.rank;
			data['player'] = this.player;
			data['characterId'] = this.characterId;
			data['value'] = this.value;
		return data;
	}
}