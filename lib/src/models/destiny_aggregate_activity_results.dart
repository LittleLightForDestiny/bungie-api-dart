import 'destiny_aggregate_activity_stats.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_aggregate_activity_results.g.dart';

@JsonSerializable()
class DestinyAggregateActivityResults {

	/// List of all activities the player has participated in.
	@JsonKey(name:'activities')
	List<DestinyAggregateActivityStats> activities;
	DestinyAggregateActivityResults();

	factory DestinyAggregateActivityResults.fromJson(Map<String, dynamic> json) => _$DestinyAggregateActivityResultsFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyAggregateActivityResultsToJson(this);
}
