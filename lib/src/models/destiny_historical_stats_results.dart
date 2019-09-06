
import 'package:json_annotation/json_annotation.dart';
part 'destiny_historical_stats_results.g.dart';

@JsonSerializable()
class DestinyHistoricalStatsResults {
	DestinyHistoricalStatsResults();

	factory DestinyHistoricalStatsResults.fromJson(Map<String, dynamic> json) => _$DestinyHistoricalStatsResultsFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsResultsToJson(this);
}
