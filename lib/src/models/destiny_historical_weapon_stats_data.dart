import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_historical_weapon_stats.dart';

part 'destiny_historical_weapon_stats_data.g.dart';

@JsonSerializable()
class DestinyHistoricalWeaponStatsData{	
	DestinyHistoricalWeaponStatsData();

	
	/// List of weapons and their perspective values.
	@JsonKey(name:'weapons')
	List<DestinyHistoricalWeaponStats>? weapons;

	factory DestinyHistoricalWeaponStatsData.fromJson(Map<String, dynamic> json) {
		return _$DestinyHistoricalWeaponStatsDataFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalWeaponStatsDataToJson(this);

	static Future<DestinyHistoricalWeaponStatsData> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyHistoricalWeaponStatsData>((json)=>DestinyHistoricalWeaponStatsData.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}