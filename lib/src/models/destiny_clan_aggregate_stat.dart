import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/destiny_activity_mode_type.dart';
import 'destiny_historical_stats_value.dart';

part 'destiny_clan_aggregate_stat.g.dart';

@JsonSerializable()
class DestinyClanAggregateStat{	
	DestinyClanAggregateStat();

	
	/// The id of the mode of stats (allPvp, allPvE, etc)
	@JsonKey(name:'mode',fromJson:decodeDestinyActivityModeType,toJson:encodeDestinyActivityModeType)
	DestinyActivityModeType? mode;
	
	/// The id of the stat
	@JsonKey(name:'statId')
	String? statId;
	
	/// Value of the stat for this player
	@JsonKey(name:'value')
	DestinyHistoricalStatsValue? value;

	factory DestinyClanAggregateStat.fromJson(Map<String, dynamic> json) {
		return _$DestinyClanAggregateStatFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyClanAggregateStatToJson(this);

	static Future<DestinyClanAggregateStat> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyClanAggregateStat>((json)=>DestinyClanAggregateStat.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}