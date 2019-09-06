import 'destiny_historical_stats_activity.dart';
import 'destiny_historical_stats_value.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_historical_stats_period_group.g.dart';

@JsonSerializable()
class DestinyHistoricalStatsPeriodGroup {

	/// Period for the group. If the stat periodType is day, then this will have a specific day. If the type is monthly, then this value will be the first day of the applicable month. This value is not set when the periodType is &#39;all time&#39;.
	@JsonKey(name:'period')
	String period;

	/// If the period group is for a specific activity, this property will be set.
	@JsonKey(name:'activityDetails')
	DestinyHistoricalStatsActivity activityDetails;

	/// Collection of stats for the period.
	@JsonKey(name:'values')
	Map<String, DestinyHistoricalStatsValue> values;
	DestinyHistoricalStatsPeriodGroup();

	factory DestinyHistoricalStatsPeriodGroup.fromJson(Map<String, dynamic> json) => _$DestinyHistoricalStatsPeriodGroupFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsPeriodGroupToJson(this);
}
