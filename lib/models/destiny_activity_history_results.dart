import 'destiny_historical_stats_period_group.dart';
class DestinyActivityHistoryResults{
	List<DestinyHistoricalStatsPeriodGroup> activities;
	DestinyActivityHistoryResults(
		List<DestinyHistoricalStatsPeriodGroup> this.activities,
	);

	static DestinyActivityHistoryResults fromJson(Map<String, dynamic> data){
		return new DestinyActivityHistoryResults(
				DestinyHistoricalStatsPeriodGroup.fromList(data['activities']),
		);
	}

	static List<DestinyActivityHistoryResults> fromList(List<dynamic> data){
		List<DestinyActivityHistoryResults> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityHistoryResults.fromJson(item));
    });
    return list;
	}
}