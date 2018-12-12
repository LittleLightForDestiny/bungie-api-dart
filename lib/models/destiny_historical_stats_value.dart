import 'destiny_historical_stats_value_pair.dart';
import 'destiny_historical_stats_value_pair.dart';
import 'destiny_historical_stats_value_pair.dart';
class DestinyHistoricalStatsValue{
	String statId;
	DestinyHistoricalStatsValuePair basic;
	DestinyHistoricalStatsValuePair pga;
	DestinyHistoricalStatsValuePair weighted;
	int activityId;
	DestinyHistoricalStatsValue(
		String this.statId,
		DestinyHistoricalStatsValuePair this.basic,
		DestinyHistoricalStatsValuePair this.pga,
		DestinyHistoricalStatsValuePair this.weighted,
		int this.activityId,
	);

	static DestinyHistoricalStatsValue fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyHistoricalStatsValue(
				data['statId'],
				data['basic'],
				data['pga'],
				data['weighted'],
				data['activityId'],
		);
	}

	static List<DestinyHistoricalStatsValue> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyHistoricalStatsValue> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalStatsValue.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['statId'] = statId;
			data['basic'] = basic;
			data['pga'] = pga;
			data['weighted'] = weighted;
			data['activityId'] = activityId;
	}
}