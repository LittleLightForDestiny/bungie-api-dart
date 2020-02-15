import 'package:json_annotation/json_annotation.dart';

import 'destiny_historical_stats_period_group.dart';

part 'destiny_activity_history_results.g.dart';

@JsonSerializable()
class DestinyActivityHistoryResults{
	
	DestinyActivityHistoryResults();

	factory DestinyActivityHistoryResults.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyActivityHistoryResultsFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// List of activities, the most recent activity first.
	@JsonKey(name:'activities')
	List<DestinyHistoricalStatsPeriodGroup> activities;

	
	
	Map<String, dynamic> toJson() => _$DestinyActivityHistoryResultsToJson(this);
}