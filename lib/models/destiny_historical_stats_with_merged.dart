import 'destiny_historical_stats_by_period.dart';
import 'destiny_historical_stats_by_period.dart';
class DestinyHistoricalStatsWithMerged{
	Map<DestinyHistoricalStatsByPeriod, dynamic> results;
	DestinyHistoricalStatsByPeriod merged;
	DestinyHistoricalStatsWithMerged(
		Map<DestinyHistoricalStatsByPeriod, dynamic> this.results,
		DestinyHistoricalStatsByPeriod this.merged,
	);

	static DestinyHistoricalStatsWithMerged fromJson(Map<String, dynamic> data){
		return new DestinyHistoricalStatsWithMerged(
				data['results'],
				DestinyHistoricalStatsByPeriod.fromJson(data['merged']),
		);
	}

	static List<DestinyHistoricalStatsWithMerged> fromList(List<dynamic> data){
		List<DestinyHistoricalStatsWithMerged> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalStatsWithMerged.fromJson(item));
    });
    return list;
	}
}