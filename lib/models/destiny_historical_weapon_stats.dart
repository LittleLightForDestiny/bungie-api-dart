import 'destiny_historical_stats_value.dart';
class DestinyHistoricalWeaponStats{
	int referenceId;
	Map<DestinyHistoricalStatsValue, dynamic> values;
	DestinyHistoricalWeaponStats(
		int this.referenceId,
		Map<DestinyHistoricalStatsValue, dynamic> this.values,
	);

	static DestinyHistoricalWeaponStats fromJson(Map<String, dynamic> data){
		return new DestinyHistoricalWeaponStats(
				data['referenceId'],
				data['values'],
		);
	}

	static List<DestinyHistoricalWeaponStats> fromList(List<dynamic> data){
		List<DestinyHistoricalWeaponStats> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalWeaponStats.fromJson(item));
    });
    return list;
	}
}