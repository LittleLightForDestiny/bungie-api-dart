import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_historical_stats_value.dart';

part 'destiny_historical_weapon_stats.g.dart';

@JsonSerializable()
class DestinyHistoricalWeaponStats{	
	DestinyHistoricalWeaponStats();

	
	/// The hash ID of the item definition that describes the weapon.
	@JsonKey(name:'referenceId')
	int? referenceId;
	
	/// Collection of stats for the period.
	@JsonKey(name:'values')
	Map<String, DestinyHistoricalStatsValue>? values;

	factory DestinyHistoricalWeaponStats.fromJson(Map<String, dynamic> json) {
		return _$DestinyHistoricalWeaponStatsFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalWeaponStatsToJson(this);

	static Future<DestinyHistoricalWeaponStats> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyHistoricalWeaponStats>((json)=>DestinyHistoricalWeaponStats.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}