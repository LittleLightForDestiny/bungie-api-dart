import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_historical_stats_value_pair.dart';

part 'destiny_historical_stats_value.g.dart';

@JsonSerializable()
class DestinyHistoricalStatsValue{	
	DestinyHistoricalStatsValue();

	
	/// Unique ID for this stat
	@JsonKey(name:'statId')
	String? statId;
	
	/// Basic stat value.
	@JsonKey(name:'basic')
	DestinyHistoricalStatsValuePair? basic;
	
	/// Per game average for the statistic, if applicable
	@JsonKey(name:'pga')
	DestinyHistoricalStatsValuePair? pga;
	
	/// Weighted value of the stat if a weight greater than 1 has been assigned.
	@JsonKey(name:'weighted')
	DestinyHistoricalStatsValuePair? weighted;
	
	/// When a stat represents the best, most, longest, fastest or some other personal best, the actual activity ID where that personal best was established is available on this property.
	@JsonKey(name:'activityId')
	String? activityId;

	factory DestinyHistoricalStatsValue.fromJson(Map<String, dynamic> json) {
		return _$DestinyHistoricalStatsValueFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsValueToJson(this);

	static Future<DestinyHistoricalStatsValue> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyHistoricalStatsValue>((json)=>DestinyHistoricalStatsValue.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}