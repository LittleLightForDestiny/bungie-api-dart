import 'destiny_aggregate_activity_stats.dart';

/**  */
class DestinyAggregateActivityResults{
	
	/** List of all activities the player has participated in. */
	List<DestinyAggregateActivityStats> activities;
	DestinyAggregateActivityResults(
		this.activities,
	);

	static DestinyAggregateActivityResults fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyAggregateActivityResults(
				data['activities'] != null ? DestinyAggregateActivityStats.fromList(data['activities']) : null,
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
			data['activities'] = this.activities != null? this.activities.map((item)=>item.toMap()).toList() : null;
		return data;
	}
}