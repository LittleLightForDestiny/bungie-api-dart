import 'destiny_historical_stats_value.dart';
class DestinyClanAggregateStat{
	int mode;
	String statId;
	DestinyHistoricalStatsValue value;
	DestinyClanAggregateStat(
		int this.mode,
		String this.statId,
		DestinyHistoricalStatsValue this.value,
	);

	static DestinyClanAggregateStat fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyClanAggregateStat(
				data['mode'],
				data['statId'],
				data['value'],
		);
	}

	static List<DestinyClanAggregateStat> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyClanAggregateStat> list = new List();
    data.forEach((item) {
      list.add(DestinyClanAggregateStat.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['mode'] = this.mode;
			data['statId'] = this.statId;
			data['value'] = this.value;
		return data;
	}
}