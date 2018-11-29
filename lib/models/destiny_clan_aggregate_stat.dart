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

	static DestinyClanAggregateStat fromJson(Map<String, dynamic> data){
		return new DestinyClanAggregateStat(
				data['mode'],
				data['statId'],
				data['value'],
		);
	}

	static List<DestinyClanAggregateStat> fromList(List<dynamic> data){
		List<DestinyClanAggregateStat> list = new List();
    data.forEach((item) {
      list.add(DestinyClanAggregateStat.fromJson(item));
    });
    return list;
	}
}