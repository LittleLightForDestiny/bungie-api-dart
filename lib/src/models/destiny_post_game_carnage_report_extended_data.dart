import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_historical_weapon_stats.dart';
import 'destiny_historical_stats_value.dart';

part 'destiny_post_game_carnage_report_extended_data.g.dart';

@JsonSerializable()
class DestinyPostGameCarnageReportExtendedData{	
	DestinyPostGameCarnageReportExtendedData();

	
	/// List of weapons and their perspective values.
	@JsonKey(name:'weapons')
	List<DestinyHistoricalWeaponStats>? weapons;
	
	/// Collection of stats for the player in this activity.
	@JsonKey(name:'values')
	Map<String, DestinyHistoricalStatsValue>? values;

	factory DestinyPostGameCarnageReportExtendedData.fromJson(Map<String, dynamic> json) {
		return _$DestinyPostGameCarnageReportExtendedDataFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPostGameCarnageReportExtendedDataToJson(this);

	static Future<DestinyPostGameCarnageReportExtendedData> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyPostGameCarnageReportExtendedData>((json)=>DestinyPostGameCarnageReportExtendedData.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}