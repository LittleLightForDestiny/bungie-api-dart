import 'package:json_annotation/json_annotation.dart';

import 'destiny_historical_stats_value.dart';

part 'destiny_aggregate_activity_stats.g.dart';

@JsonSerializable()
class DestinyAggregateActivityStats{
	
	DestinyAggregateActivityStats();

	factory DestinyAggregateActivityStats.fromJson(Map<String, dynamic> json) {
		return _$DestinyAggregateActivityStatsFromJson(json);
	}

	/// Hash ID that can be looked up in the DestinyActivityTable.
	@JsonKey(name:'activityHash')
	int? activityHash;
	/// Collection of stats for the player in this activity.
	@JsonKey(name:'values')
	Map<String, DestinyHistoricalStatsValue>? values;

	
	
	Map<String, dynamic> toJson() => _$DestinyAggregateActivityStatsToJson(this);
}