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

	static DestinyLeaderboardEntry fromJson(Map<String, dynamic> data){
		return new DestinyLeaderboardEntry(
				data['rank'],
				data['player'],
				data['characterId'],
				data['value'],
		);
	}

	static List<DestinyLeaderboardEntry> fromList(List<dynamic> data){
		List<DestinyLeaderboardEntry> list = new List();
    data.forEach((item) {
      list.add(DestinyLeaderboardEntry.fromJson(item));
    });
    return list;
	}
}