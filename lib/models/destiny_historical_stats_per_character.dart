import 'destiny_historical_stats_by_period.dart';
import 'destiny_historical_stats_by_period.dart';
class DestinyHistoricalStatsPerCharacter{
	int characterId;
	bool deleted;
	Map<DestinyHistoricalStatsByPeriod, dynamic> results;
	DestinyHistoricalStatsByPeriod merged;
	DestinyHistoricalStatsPerCharacter(
		int this.characterId,
		bool this.deleted,
		Map<DestinyHistoricalStatsByPeriod, dynamic> this.results,
		DestinyHistoricalStatsByPeriod this.merged,
	);

	static DestinyHistoricalStatsPerCharacter fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyHistoricalStatsPerCharacter(
				data['characterId'],
				data['deleted'],
				data['results'],
				DestinyHistoricalStatsByPeriod.fromJson(data['merged']),
		);
	}

	static List<DestinyHistoricalStatsPerCharacter> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyHistoricalStatsPerCharacter> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalStatsPerCharacter.fromJson(item));
    });
    return list;
	}
}