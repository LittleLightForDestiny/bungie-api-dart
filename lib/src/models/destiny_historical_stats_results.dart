import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_historical_stats_results.g.dart';

@JsonSerializable()
class DestinyHistoricalStatsResults{	
	DestinyHistoricalStatsResults();


	factory DestinyHistoricalStatsResults.fromJson(Map<String, dynamic> json) {
		return _$DestinyHistoricalStatsResultsFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsResultsToJson(this);

	static Future<DestinyHistoricalStatsResults> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyHistoricalStatsResults>((json)=>DestinyHistoricalStatsResults.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}