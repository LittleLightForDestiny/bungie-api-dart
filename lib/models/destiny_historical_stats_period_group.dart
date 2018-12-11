import 'destiny_historical_stats_activity.dart';
import 'destiny_historical_stats_value.dart';
class DestinyHistoricalStatsPeriodGroup{
	String period;
	DestinyHistoricalStatsActivity activityDetails;
	Map<DestinyHistoricalStatsValue, dynamic> values;
	DestinyHistoricalStatsPeriodGroup(
		String this.period,
		DestinyHistoricalStatsActivity this.activityDetails,
		Map<DestinyHistoricalStatsValue, dynamic> this.values,
	);

	static DestinyHistoricalStatsPeriodGroup fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyHistoricalStatsPeriodGroup(
				data['period'],
				data['activityDetails'],
				data['values'],
		);
	}

	static List<DestinyHistoricalStatsPeriodGroup> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyHistoricalStatsPeriodGroup> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalStatsPeriodGroup.fromJson(item));
    });
    return list;
	}
}