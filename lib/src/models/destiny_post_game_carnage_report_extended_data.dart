import 'destiny_historical_weapon_stats.dart';
import 'destiny_historical_stats_value.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_post_game_carnage_report_extended_data.g.dart';

@JsonSerializable()
class DestinyPostGameCarnageReportExtendedData {

	/// List of weapons and their perspective values.
	@JsonKey(name:'weapons')
	List<DestinyHistoricalWeaponStats> weapons;

	/// Collection of stats for the player in this activity.
	@JsonKey(name:'values')
	Map<String, DestinyHistoricalStatsValue> values;
	DestinyPostGameCarnageReportExtendedData();

	factory DestinyPostGameCarnageReportExtendedData.fromJson(Map<String, dynamic> json) => _$DestinyPostGameCarnageReportExtendedDataFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyPostGameCarnageReportExtendedDataToJson(this);
}
