import 'destiny_historical_stats_value.dart';

/**  */
class DestinyHistoricalWeaponStats{
	
	/** The hash ID of the item definition that describes the weapon. */
	int referenceId;
	
	/** Collection of stats for the period. */
	Map<String, DestinyHistoricalStatsValue> values;
	DestinyHistoricalWeaponStats(
		this.referenceId,
		this.values,
	);

	static DestinyHistoricalWeaponStats fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyHistoricalWeaponStats(
				data['referenceId'],
				data['values'] != null ? Map<String, DestinyHistoricalStatsValue>.from(data['values'].map((k, v)=>MapEntry(k, DestinyHistoricalStatsValue.fromMap(v)))) : null,
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