import 'destiny_historical_stats_value.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_aggregate_activity_stats.g.dart';

@JsonSerializable()
class DestinyAggregateActivityStats {

	/// Hash ID that can be looked up in the DestinyActivityTable.
	@JsonKey(name:'activityHash')
	int activityHash;

	/// Collection of stats for the player in this activity.
	@JsonKey(name:'values')
	Map<String, DestinyHistoricalStatsValue> values;
	DestinyAggregateActivityStats();

	factory DestinyAggregateActivityStats.fromJson(Map<String, dynamic> json) => _$DestinyAggregateActivityStatsFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyAggregateActivityStatsToJson(this);
}
