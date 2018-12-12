import 'destiny_historical_stats_by_period.dart';
import 'destiny_historical_stats_by_period.dart';
class DestinyHistoricalStatsWithMerged{
	Map<DestinyHistoricalStatsByPeriod, dynamic> results;
	DestinyHistoricalStatsByPeriod merged;
	DestinyHistoricalStatsWithMerged(
		Map<DestinyHistoricalStatsByPeriod, dynamic> this.results,
		DestinyHistoricalStatsByPeriod this.merged,
	);

	static DestinyHistoricalStatsWithMerged fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyHistoricalStatsWithMerged(
				data['results'],
				DestinyHistoricalStatsByPeriod.fromMap(data['merged']),
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
			data['results'] = results;
			data['merged'] = merged.toMap();
	}
}