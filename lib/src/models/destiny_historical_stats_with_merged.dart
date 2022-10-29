import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_historical_stats_by_period.dart';

part 'destiny_historical_stats_with_merged.g.dart';

@JsonSerializable()
class DestinyHistoricalStatsWithMerged{	
	DestinyHistoricalStatsWithMerged();

	
	@JsonKey(name:'results')
	Map<String, DestinyHistoricalStatsByPeriod>? results;
	
	@JsonKey(name:'merged')
	DestinyHistoricalStatsByPeriod? merged;

	factory DestinyHistoricalStatsWithMerged.fromJson(Map<String, dynamic> json) {
		return _$DestinyHistoricalStatsWithMergedFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsWithMergedToJson(this);

	static Future<DestinyHistoricalStatsWithMerged> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyHistoricalStatsWithMerged>((json)=>DestinyHistoricalStatsWithMerged.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}