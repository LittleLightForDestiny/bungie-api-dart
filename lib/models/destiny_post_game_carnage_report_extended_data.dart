import 'destiny_historical_weapon_stats.dart';
import 'destiny_historical_stats_value.dart';
class DestinyPostGameCarnageReportExtendedData{
	List<DestinyHistoricalWeaponStats> weapons;
	Map<DestinyHistoricalStatsValue, dynamic> values;
	DestinyPostGameCarnageReportExtendedData(
		List<DestinyHistoricalWeaponStats> this.weapons,
		Map<DestinyHistoricalStatsValue, dynamic> this.values,
	);

	static DestinyPostGameCarnageReportExtendedData fromJson(Map<String, dynamic> data){
		return new DestinyPostGameCarnageReportExtendedData(
				DestinyHistoricalWeaponStats.fromList(data['weapons']),
				data['values'],
		);
	}

	static List<DestinyPostGameCarnageReportExtendedData> fromList(List<dynamic> data){
		List<DestinyPostGameCarnageReportExtendedData> list = new List();
    data.forEach((item) {
      list.add(DestinyPostGameCarnageReportExtendedData.fromJson(item));
    });
    return list;
	}
}