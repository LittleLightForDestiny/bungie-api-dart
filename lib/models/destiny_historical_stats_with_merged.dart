import 'destiny_historical_stats_by_period.dart';

/*  */
class DestinyHistoricalStatsWithMerged{
	
	/*  */
	Map<String, DestinyHistoricalStatsByPeriod> results;
	
	/*  */
	DestinyHistoricalStatsByPeriod merged;
	DestinyHistoricalStatsWithMerged(
		this.results,
		this.merged,
	);

	static DestinyHistoricalStatsWithMerged fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyHistoricalStatsWithMerged(
				data['results'] != null ? Map<String, DestinyHistoricalStatsByPeriod>.from(data['results'].map((k, v)=>MapEntry(k, DestinyHistoricalStatsByPeriod.fromMap(v)))) : null,
				data['merged'] != null ? DestinyHistoricalStatsByPeriod.fromMap(data['merged']) : null,
		);
	}

	static List<DestinyHistoricalStatsWithMerged> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyHistoricalStatsWithMerged> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalStatsWithMerged.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['results'] = this.results;
			data['merged'] = this.merged.toMap();
		return data;
	}
}