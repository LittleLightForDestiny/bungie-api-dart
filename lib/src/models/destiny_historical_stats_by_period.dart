import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_historical_stats_value.dart';
import 'destiny_historical_stats_period_group.dart';

part 'destiny_historical_stats_by_period.g.dart';

@JsonSerializable()
class DestinyHistoricalStatsByPeriod{	
	DestinyHistoricalStatsByPeriod();

	
	@JsonKey(name:'allTime')
	Map<String, DestinyHistoricalStatsValue>? allTime;
	
	@JsonKey(name:'allTimeTier1')
	Map<String, DestinyHistoricalStatsValue>? allTimeTier1;
	
	@JsonKey(name:'allTimeTier2')
	Map<String, DestinyHistoricalStatsValue>? allTimeTier2;
	
	@JsonKey(name:'allTimeTier3')
	Map<String, DestinyHistoricalStatsValue>? allTimeTier3;
	
	@JsonKey(name:'daily')
	List<DestinyHistoricalStatsPeriodGroup>? daily;
	
	@JsonKey(name:'monthly')
	List<DestinyHistoricalStatsPeriodGroup>? monthly;

	factory DestinyHistoricalStatsByPeriod.fromJson(Map<String, dynamic> json) {
		return _$DestinyHistoricalStatsByPeriodFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsByPeriodToJson(this);

	static Future<DestinyHistoricalStatsByPeriod> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyHistoricalStatsByPeriod>((json)=>DestinyHistoricalStatsByPeriod.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}