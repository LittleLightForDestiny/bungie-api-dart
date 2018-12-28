import 'destiny_historical_stats_activity.dart';
import 'destiny_historical_stats_value.dart';

/**  */
class DestinyHistoricalStatsPeriodGroup{
	
	/** Period for the group. If the stat periodType is day, then this will have a specific day. If the type is monthly, then this value will be the first day of the applicable month. This value is not set when the periodType is 'all time'. */
	String period;
	
	/** If the period group is for a specific activity, this property will be set. */
	DestinyHistoricalStatsActivity activityDetails;
	
	/** Collection of stats for the period. */
	Map<String, DestinyHistoricalStatsValue> values;
	DestinyHistoricalStatsPeriodGroup(
		this.period,
		this.activityDetails,
		this.values,
	);

	static DestinyHistoricalStatsPeriodGroup fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyHistoricalStatsPeriodGroup(
				data['period'],
				data['activityDetails'] != null ? DestinyHistoricalStatsActivity.fromMap(data['activityDetails']) : null,
				data['values'] != null ? Map<String, DestinyHistoricalStatsValue>.from(data['values'].map((k, v)=>MapEntry(k, DestinyHistoricalStatsValue.fromMap(v)))) : null,
		);
	}

	static List<DestinyHistoricalStatsPeriodGroup> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyHistoricalStatsPeriodGroup> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalStatsPeriodGroup.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['period'] = this.period;
			data['activityDetails'] = this.activityDetails;
			data['values'] = this.values;
		return data;
	}
}