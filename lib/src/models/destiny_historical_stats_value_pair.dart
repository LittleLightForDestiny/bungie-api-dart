import 'package:json_annotation/json_annotation.dart';


part 'destiny_historical_stats_value_pair.g.dart';

@JsonSerializable()
class DestinyHistoricalStatsValuePair{
	
	DestinyHistoricalStatsValuePair();

	factory DestinyHistoricalStatsValuePair.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyHistoricalStatsValuePairFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// Raw value of the statistic
	@JsonKey(name:'value')
	double value;
	/// Localized formated version of the value.
	@JsonKey(name:'displayValue')
	String displayValue;

	
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsValuePairToJson(this);
}