import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_historical_stats_period_group.dart';

part 'destiny_activity_history_results.g.dart';

@JsonSerializable()
class DestinyActivityHistoryResults{	
	DestinyActivityHistoryResults();

	
	/// List of activities, the most recent activity first.
	@JsonKey(name:'activities')
	List<DestinyHistoricalStatsPeriodGroup>? activities;

	factory DestinyActivityHistoryResults.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityHistoryResultsFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityHistoryResultsToJson(this);

	static Future<DestinyActivityHistoryResults> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityHistoryResults>((json)=>DestinyActivityHistoryResults.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}