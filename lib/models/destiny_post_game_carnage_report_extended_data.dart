import 'destiny_historical_weapon_stats.dart';
import 'destiny_historical_stats_value.dart';
class DestinyPostGameCarnageReportExtendedData{
	List<DestinyHistoricalWeaponStats> weapons;
	Map<DestinyHistoricalStatsValue, dynamic> values;
	DestinyPostGameCarnageReportExtendedData(
		List<DestinyHistoricalWeaponStats> this.weapons,
		Map<DestinyHistoricalStatsValue, dynamic> this.values,
	);

	static DestinyPostGameCarnageReportExtendedData fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPostGameCarnageReportExtendedData(
				DestinyHistoricalWeaponStats.fromList(data['weapons']),
				data['values'],
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