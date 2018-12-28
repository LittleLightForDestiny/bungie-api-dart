import 'destiny_historical_weapon_stats.dart';

/**  */
class DestinyHistoricalWeaponStatsData{
	
	/** List of weapons and their perspective values. */
	List<DestinyHistoricalWeaponStats> weapons;
	DestinyHistoricalWeaponStatsData(
		this.weapons,
	);

	static DestinyHistoricalWeaponStatsData fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyHistoricalWeaponStatsData(
				data['weapons'] != null ? DestinyHistoricalWeaponStats.fromList(data['weapons']) : null,
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
			data['weapons'] = this.weapons.map((item)=>item.toMap()).toList();
		return data;
	}
}