import 'destiny_historical_stats_value.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_historical_weapon_stats.g.dart';

@JsonSerializable()
class DestinyHistoricalWeaponStats {

	/// The hash ID of the item definition that describes the weapon.
	@JsonKey(name:'referenceId')
	int referenceId;

	/// Collection of stats for the period.
	@JsonKey(name:'values')
	Map<String, DestinyHistoricalStatsValue> values;
	DestinyHistoricalWeaponStats();

	factory DestinyHistoricalWeaponStats.fromJson(Map<String, dynamic> json) => _$DestinyHistoricalWeaponStatsFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalWeaponStatsToJson(this);
}
