import 'destiny_historical_stats_by_period.dart';
import 'destiny_historical_stats_by_period.dart';
class DestinyHistoricalStatsPerCharacter{
	String characterId;
	bool deleted;
	Map<String, DestinyHistoricalStatsByPeriod> results;
	DestinyHistoricalStatsByPeriod merged;
	DestinyHistoricalStatsPerCharacter(
		this.characterId,
		this.deleted,
		this.results,
		this.merged,
	);

	static DestinyHistoricalStatsPerCharacter fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyHistoricalStatsPerCharacter(
				data['characterId'],
				data['deleted'],
				data['results'] != null ? Map<String, DestinyHistoricalStatsByPeriod>.from(data['results'].map((k, v)=>MapEntry(k, DestinyHistoricalStatsByPeriod.fromMap(v)))) : null,
				data['merged'] != null ? DestinyHistoricalStatsByPeriod.fromMap(data['merged']) : null,
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