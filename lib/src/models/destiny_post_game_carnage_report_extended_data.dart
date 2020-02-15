import 'package:json_annotation/json_annotation.dart';

import 'destiny_historical_weapon_stats.dart';
import 'destiny_historical_stats_value.dart';

part 'destiny_post_game_carnage_report_extended_data.g.dart';

@JsonSerializable()
class DestinyPostGameCarnageReportExtendedData{
	
	DestinyPostGameCarnageReportExtendedData();

	factory DestinyPostGameCarnageReportExtendedData.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyPostGameCarnageReportExtendedDataFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// List of weapons and their perspective values.
	@JsonKey(name:'weapons')
	List<DestinyHistoricalWeaponStats> weapons;
	/// Collection of stats for the player in this activity.
	@JsonKey(name:'values')
	Map<String, DestinyHistoricalStatsValue> values;

	
	
	Map<String, dynamic> toJson() => _$DestinyPostGameCarnageReportExtendedDataToJson(this);
}