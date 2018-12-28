import 'destiny_historical_weapon_stats.dart';
import 'destiny_historical_stats_value.dart';

/*  */
class DestinyPostGameCarnageReportExtendedData{
	
	/* List of weapons and their perspective values. */
	List<DestinyHistoricalWeaponStats> weapons;
	
	/* Collection of stats for the player in this activity. */
	Map<String, DestinyHistoricalStatsValue> values;
	DestinyPostGameCarnageReportExtendedData(
		this.weapons,
		this.values,
	);

	static DestinyPostGameCarnageReportExtendedData fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPostGameCarnageReportExtendedData(
				data['weapons'] != null ? DestinyHistoricalWeaponStats.fromList(data['weapons']) : null,
				data['values'] != null ? Map<String, DestinyHistoricalStatsValue>.from(data['values'].map((k, v)=>MapEntry(k, DestinyHistoricalStatsValue.fromMap(v)))) : null,
		);
	}

	static List<DestinyPostGameCarnageReportExtendedData> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPostGameCarnageReportExtendedData> list = new List();
    data.forEach((item) {
      list.add(DestinyPostGameCarnageReportExtendedData.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['weapons'] = this.weapons.map((item)=>item.toMap()).toList();
			data['values'] = this.values;
		return data;
	}
}