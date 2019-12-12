import 'package:json_annotation/json_annotation.dart';

import 'destiny_aggregate_activity_stats.dart';

part 'destiny_aggregate_activity_results.g.dart';

@JsonSerializable()
class DestinyAggregateActivityResults{
	
	DestinyAggregateActivityResults();

	factory DestinyAggregateActivityResults.fromJson(Map<String, dynamic> json) => _$DestinyAggregateActivityResultsFromJson(json);

	/// List of all activities the player has participated in.
	@JsonKey(name:'activities')
	List<DestinyAggregateActivityStats> activities;

	
	
	Map<String, dynamic> toJson() => _$DestinyAggregateActivityResultsToJson(this);
}