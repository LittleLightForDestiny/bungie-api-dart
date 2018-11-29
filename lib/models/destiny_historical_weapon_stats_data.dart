import 'destiny_historical_weapon_stats.dart';
class DestinyHistoricalWeaponStatsData{
	List<DestinyHistoricalWeaponStats> weapons;
	DestinyHistoricalWeaponStatsData(
		List<DestinyHistoricalWeaponStats> this.weapons,
	);

	static DestinyHistoricalWeaponStatsData fromJson(Map<String, dynamic> data){
		return new DestinyHistoricalWeaponStatsData(
				DestinyHistoricalWeaponStats.fromList(data['weapons']),
		);
	}

	static List<DestinyHistoricalWeaponStatsData> fromList(List<dynamic> data){
		List<DestinyHistoricalWeaponStatsData> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalWeaponStatsData.fromJson(item));
    });
    return list;
	}
}