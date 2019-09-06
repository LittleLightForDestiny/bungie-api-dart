import 'destiny_historical_weapon_stats.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_historical_weapon_stats_data.g.dart';

@JsonSerializable()
class DestinyHistoricalWeaponStatsData {

	/// List of weapons and their perspective values.
	@JsonKey(name:'weapons')
	List<DestinyHistoricalWeaponStats> weapons;
	DestinyHistoricalWeaponStatsData();

	factory DestinyHistoricalWeaponStatsData.fromJson(Map<String, dynamic> json) => _$DestinyHistoricalWeaponStatsDataFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalWeaponStatsDataToJson(this);
}
