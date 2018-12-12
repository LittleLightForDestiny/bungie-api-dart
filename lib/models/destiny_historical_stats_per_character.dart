import 'destiny_historical_stats_by_period.dart';
import 'destiny_historical_stats_by_period.dart';
class DestinyHistoricalStatsPerCharacter{
	String characterId;
	bool deleted;
	Map<DestinyHistoricalStatsByPeriod, dynamic> results;
	DestinyHistoricalStatsByPeriod merged;
	DestinyHistoricalStatsPerCharacter(
		String this.characterId,
		bool this.deleted,
		Map<DestinyHistoricalStatsByPeriod, dynamic> this.results,
		DestinyHistoricalStatsByPeriod this.merged,
	);

	static DestinyHistoricalStatsPerCharacter fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyHistoricalStatsPerCharacter(
				data['characterId'],
				data['deleted'],
				data['results'],
				DestinyHistoricalStatsByPeriod.fromMap(data['merged']),
		);
	}

	static List<DestinyHistoricalStatsPerCharacter> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyHistoricalStatsPerCharacter> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalStatsPerCharacter.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['characterId'] = this.characterId;
			data['deleted'] = this.deleted;
			data['results'] = this.results;
			data['merged'] = this.merged.toMap();
		return data;
	}
}