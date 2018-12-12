import 'destiny_historical_stats_value.dart';
class DestinyHistoricalWeaponStats{
	int referenceId;
	Map<DestinyHistoricalStatsValue, dynamic> values;
	DestinyHistoricalWeaponStats(
		int this.referenceId,
		Map<DestinyHistoricalStatsValue, dynamic> this.values,
	);

	static DestinyHistoricalWeaponStats fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyHistoricalWeaponStats(
				data['referenceId'],
				data['values'],
		);
	}

	static List<DestinyHistoricalWeaponStats> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyHistoricalWeaponStats> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalWeaponStats.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['referenceId'] = this.referenceId;
			data['values'] = this.values;
		return data;
	}
}