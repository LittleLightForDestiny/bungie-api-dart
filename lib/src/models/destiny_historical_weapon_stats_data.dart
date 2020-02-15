import 'package:json_annotation/json_annotation.dart';

import 'destiny_historical_weapon_stats.dart';

part 'destiny_historical_weapon_stats_data.g.dart';

@JsonSerializable()
class DestinyHistoricalWeaponStatsData{
	
	DestinyHistoricalWeaponStatsData();

	factory DestinyHistoricalWeaponStatsData.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyHistoricalWeaponStatsDataFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// List of weapons and their perspective values.
	@JsonKey(name:'weapons')
	List<DestinyHistoricalWeaponStats> weapons;

	
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalWeaponStatsDataToJson(this);
}