import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_historical_stats_activity.dart';
import 'destiny_historical_stats_value.dart';

part 'destiny_historical_stats_period_group.g.dart';

@JsonSerializable()
class DestinyHistoricalStatsPeriodGroup{	
	DestinyHistoricalStatsPeriodGroup();

	
	/// Period for the group. If the stat periodType is day, then this will have a specific day. If the type is monthly, then this value will be the first day of the applicable month. This value is not set when the periodType is 'all time'.
	@JsonKey(name:'period')
	String? period;
	
	/// If the period group is for a specific activity, this property will be set.
	@JsonKey(name:'activityDetails')
	DestinyHistoricalStatsActivity? activityDetails;
	
	/// Collection of stats for the period.
	@JsonKey(name:'values')
	Map<String, DestinyHistoricalStatsValue>? values;

	factory DestinyHistoricalStatsPeriodGroup.fromJson(Map<String, dynamic> json) {
		return _$DestinyHistoricalStatsPeriodGroupFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsPeriodGroupToJson(this);

	static Future<DestinyHistoricalStatsPeriodGroup> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyHistoricalStatsPeriodGroup>((json)=>DestinyHistoricalStatsPeriodGroup.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}