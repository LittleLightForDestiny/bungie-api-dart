import 'package:json_annotation/json_annotation.dart';

import '../enums/destiny_activity_mode_type.dart';
import 'destiny_historical_stats_value.dart';

part 'destiny_clan_aggregate_stat.g.dart';

@JsonSerializable()
class DestinyClanAggregateStat{
	
	DestinyClanAggregateStat();

	factory DestinyClanAggregateStat.fromJson(Map<String, dynamic> json) => _$DestinyClanAggregateStatFromJson(json);

	/// The id of the mode of stats (allPvp, allPvE, etc)
	@JsonKey(name:'mode',unknownEnumValue:DestinyActivityModeType.None)
	DestinyActivityModeType mode;
	/// The id of the stat
	@JsonKey(name:'statId')
	String statId;
	/// Value of the stat for this player
	@JsonKey(name:'value')
	DestinyHistoricalStatsValue value;

	
	
	Map<String, dynamic> toJson() => _$DestinyClanAggregateStatToJson(this);
}