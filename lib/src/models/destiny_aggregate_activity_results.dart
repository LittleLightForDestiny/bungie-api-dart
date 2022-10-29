import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_aggregate_activity_stats.dart';

part 'destiny_aggregate_activity_results.g.dart';

@JsonSerializable()
class DestinyAggregateActivityResults{	
	DestinyAggregateActivityResults();

	
	/// List of all activities the player has participated in.
	@JsonKey(name:'activities')
	List<DestinyAggregateActivityStats>? activities;

	factory DestinyAggregateActivityResults.fromJson(Map<String, dynamic> json) {
		return _$DestinyAggregateActivityResultsFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyAggregateActivityResultsToJson(this);

	static Future<DestinyAggregateActivityResults> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyAggregateActivityResults>((json)=>DestinyAggregateActivityResults.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}