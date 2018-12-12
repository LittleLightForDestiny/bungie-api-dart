import 'destiny_aggregate_activity_stats.dart';
class DestinyAggregateActivityResults{
	List<DestinyAggregateActivityStats> activities;
	DestinyAggregateActivityResults(
		List<DestinyAggregateActivityStats> this.activities,
	);

	static DestinyAggregateActivityResults fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyAggregateActivityResults(
				DestinyAggregateActivityStats.fromList(data['activities']),
		);
	}

	static List<DestinyAggregateActivityResults> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyAggregateActivityResults> list = new List();
    data.forEach((item) {
      list.add(DestinyAggregateActivityResults.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['activities'] = this.activities.map((item)=>item.toMap());
		return data;
	}
}