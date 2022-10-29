import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_historical_stats_value_pair.g.dart';

@JsonSerializable()
class DestinyHistoricalStatsValuePair{	
	DestinyHistoricalStatsValuePair();

	
	/// Raw value of the statistic
	@JsonKey(name:'value')
	double? value;
	
	/// Localized formated version of the value.
	@JsonKey(name:'displayValue')
	String? displayValue;

	factory DestinyHistoricalStatsValuePair.fromJson(Map<String, dynamic> json) {
		return _$DestinyHistoricalStatsValuePairFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsValuePairToJson(this);

	static Future<DestinyHistoricalStatsValuePair> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyHistoricalStatsValuePair>((json)=>DestinyHistoricalStatsValuePair.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}