import 'destiny_historical_stats_value.dart';

/*  */
class DestinyAggregateActivityStats{
	
	/* Hash ID that can be looked up in the DestinyActivityTable. */
	int activityHash;
	
	/* Collection of stats for the player in this activity. */
	Map<String, DestinyHistoricalStatsValue> values;
	DestinyAggregateActivityStats(
		this.activityHash,
		this.values,
	);

	static DestinyAggregateActivityStats fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyAggregateActivityStats(
				data['activityHash'],
				data['values'] != null ? Map<String, DestinyHistoricalStatsValue>.from(data['values'].map((k, v)=>MapEntry(k, DestinyHistoricalStatsValue.fromMap(v)))) : null,
		);
	}

	static List<DestinyAggregateActivityStats> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyAggregateActivityStats> list = new List();
    data.forEach((item) {
      list.add(DestinyAggregateActivityStats.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['activityHash'] = this.activityHash;
			data['values'] = this.values;
		return data;
	}
}