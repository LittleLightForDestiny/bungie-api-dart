import 'package:json_annotation/json_annotation.dart';

import 'destiny_historical_stats_by_period.dart';

part 'destiny_historical_stats_with_merged.g.dart';

@JsonSerializable()
class DestinyHistoricalStatsWithMerged{
	
	DestinyHistoricalStatsWithMerged();

	factory DestinyHistoricalStatsWithMerged.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyHistoricalStatsWithMergedFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'results')
	Map<String, DestinyHistoricalStatsByPeriod> results;
	@JsonKey(name:'merged')
	DestinyHistoricalStatsByPeriod merged;

	
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsWithMergedToJson(this);
}