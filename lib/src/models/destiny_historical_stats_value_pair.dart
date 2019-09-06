
import 'package:json_annotation/json_annotation.dart';
part 'destiny_historical_stats_value_pair.g.dart';

@JsonSerializable()
class DestinyHistoricalStatsValuePair {

	/// Raw value of the statistic
	@JsonKey(name:'value')
	int value;

	/// Localized formated version of the value.
	@JsonKey(name:'displayValue')
	String displayValue;
	DestinyHistoricalStatsValuePair();

	factory DestinyHistoricalStatsValuePair.fromJson(Map<String, dynamic> json) => _$DestinyHistoricalStatsValuePairFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsValuePairToJson(this);
}
