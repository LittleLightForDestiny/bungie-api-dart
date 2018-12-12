import 'destiny_historical_weapon_stats.dart';
class DestinyHistoricalWeaponStatsData{
	List<DestinyHistoricalWeaponStats> weapons;
	DestinyHistoricalWeaponStatsData(
		List<DestinyHistoricalWeaponStats> this.weapons,
	);

	static DestinyHistoricalWeaponStatsData fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyHistoricalWeaponStatsData(
				DestinyHistoricalWeaponStats.fromList(data['weapons']),
		);
	}

	static List<DestinyHistoricalWeaponStatsData> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyHistoricalWeaponStatsData> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalWeaponStatsData.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['weapons'] = weapons.map((item)=>item.toMap());
	}
}