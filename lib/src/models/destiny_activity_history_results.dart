import 'destiny_historical_stats_period_group.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_activity_history_results.g.dart';

@JsonSerializable()
class DestinyActivityHistoryResults {

	/// List of activities, the most recent activity first.
	@JsonKey(name:'activities')
	List<DestinyHistoricalStatsPeriodGroup> activities;
	DestinyActivityHistoryResults();

	factory DestinyActivityHistoryResults.fromJson(Map<String, dynamic> json) => _$DestinyActivityHistoryResultsFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyActivityHistoryResultsToJson(this);
}
