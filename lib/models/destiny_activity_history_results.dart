import 'destiny_historical_stats_period_group.dart';
class DestinyActivityHistoryResults{
	List<DestinyHistoricalStatsPeriodGroup> activities;
	DestinyActivityHistoryResults(
		List<DestinyHistoricalStatsPeriodGroup> this.activities,
	);

	static DestinyActivityHistoryResults fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityHistoryResults(
				DestinyHistoricalStatsPeriodGroup.fromList(data['activities']),
		);
	}

	static List<DestinyActivityHistoryResults> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityHistoryResults> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityHistoryResults.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['activities'] = this.activities.map((item)=>item.toMap()).toList();
		return data;
	}
}