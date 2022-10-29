import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_historical_stats_value.dart';

part 'destiny_aggregate_activity_stats.g.dart';

@JsonSerializable()
class DestinyAggregateActivityStats{	
	DestinyAggregateActivityStats();

	
	/// Hash ID that can be looked up in the DestinyActivityTable.
	@JsonKey(name:'activityHash')
	int? activityHash;
	
	/// Collection of stats for the player in this activity.
	@JsonKey(name:'values')
	Map<String, DestinyHistoricalStatsValue>? values;

	factory DestinyAggregateActivityStats.fromJson(Map<String, dynamic> json) {
		return _$DestinyAggregateActivityStatsFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyAggregateActivityStatsToJson(this);

	static Future<DestinyAggregateActivityStats> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyAggregateActivityStats>((json)=>DestinyAggregateActivityStats.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}