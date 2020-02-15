import 'package:json_annotation/json_annotation.dart';


part 'destiny_historical_stats_results.g.dart';

@JsonSerializable()
class DestinyHistoricalStatsResults{
	
	DestinyHistoricalStatsResults();

	factory DestinyHistoricalStatsResults.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyHistoricalStatsResultsFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}


	
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsResultsToJson(this);
}