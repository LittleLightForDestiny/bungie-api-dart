import 'destiny_historical_stats_value.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_clan_aggregate_stat.g.dart';

@JsonSerializable()
class DestinyClanAggregateStat {

	/// The id of the mode of stats (allPvp, allPvE, etc)
	@JsonKey(name:'mode')
	int mode;

	/// The id of the stat
	@JsonKey(name:'statId')
	String statId;

	/// Value of the stat for this player
	@JsonKey(name:'value')
	DestinyHistoricalStatsValue value;
	DestinyClanAggregateStat();

	factory DestinyClanAggregateStat.fromJson(Map<String, dynamic> json) => _$DestinyClanAggregateStatFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyClanAggregateStatToJson(this);
}
