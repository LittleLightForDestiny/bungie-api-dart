import 'destiny_leaderboard_entry.dart';
class DestinyLeaderboard{
	String statId;
	List<DestinyLeaderboardEntry> entries;
	DestinyLeaderboard(
		String this.statId,
		List<DestinyLeaderboardEntry> this.entries,
	);

	static DestinyLeaderboard fromJson(Map<String, dynamic> data){
		return new DestinyLeaderboard(
				data['statId'],
				DestinyLeaderboardEntry.fromList(data['entries']),
		);
	}

	static List<DestinyLeaderboard> fromList(List<dynamic> data){
		List<DestinyLeaderboard> list = new List();
    data.forEach((item) {
      list.add(DestinyLeaderboard.fromJson(item));
    });
    return list;
	}
}