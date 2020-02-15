import 'package:json_annotation/json_annotation.dart';

import 'destiny_historical_stats_value.dart';

part 'destiny_historical_weapon_stats.g.dart';

@JsonSerializable()
class DestinyHistoricalWeaponStats{
	
	DestinyHistoricalWeaponStats();

	factory DestinyHistoricalWeaponStats.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyHistoricalWeaponStatsFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The hash ID of the item definition that describes the weapon.
	@JsonKey(name:'referenceId')
	int referenceId;
	/// Collection of stats for the period.
	@JsonKey(name:'values')
	Map<String, DestinyHistoricalStatsValue> values;

	
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalWeaponStatsToJson(this);
}