import 'destiny_leaderboard_entry.dart';
class DestinyLeaderboard{
	String statId;
	List<DestinyLeaderboardEntry> entries;
	DestinyLeaderboard(
		this.statId,
		this.entries,
	);

	static DestinyLeaderboard fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyLeaderboard(
				data['statId'],
				data['entries'] != null ? DestinyLeaderboardEntry.fromList(data['entries']) : null,
		);
	}

	static List<DestinyLeaderboard> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyLeaderboard> list = new List();
    data.forEach((item) {
      list.add(DestinyLeaderboard.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['statId'] = this.statId;
			data['entries'] = this.entries.map((item)=>item.toMap()).toList();
		return data;
	}
}