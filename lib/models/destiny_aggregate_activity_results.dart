import 'destiny_aggregate_activity_stats.dart';
class DestinyAggregateActivityResults{
	List<DestinyAggregateActivityStats> activities;
	DestinyAggregateActivityResults(
		List<DestinyAggregateActivityStats> this.activities,
	);

	static DestinyAggregateActivityResults fromJson(Map<String, dynamic> data){
		return new DestinyAggregateActivityResults(
				DestinyAggregateActivityStats.fromList(data['activities']),
		);
	}

	static List<DestinyAggregateActivityResults> fromList(List<dynamic> data){
		List<DestinyAggregateActivityResults> list = new List();
    data.forEach((item) {
      list.add(DestinyAggregateActivityResults.fromJson(item));
    });
    return list;
	}
}