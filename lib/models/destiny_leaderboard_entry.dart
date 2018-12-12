import 'destiny_player.dart';
import 'destiny_historical_stats_value.dart';
class DestinyLeaderboardEntry{
	int rank;
	DestinyPlayer player;
	int characterId;
	DestinyHistoricalStatsValue value;
	DestinyLeaderboardEntry(
		int this.rank,
		DestinyPlayer this.player,
		int this.characterId,
		DestinyHistoricalStatsValue this.value,
	);

	static DestinyLeaderboardEntry fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyLeaderboardEntry(
				data['rank'],
				data['player'],
				data['characterId'],
				data['value'],
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
			data['rank'] = rank;
			data['player'] = player;
			data['characterId'] = characterId;
			data['value'] = value;
	}
}