
import 'package:json_annotation/json_annotation.dart';
part 'destiny_stat.g.dart';

/// Represents a stat on an item *or* Character (NOT a Historical Stat, but a physical attribute stat like Attack, Defense etc...)
@JsonSerializable()
class DestinyStat {

	/// The hash identifier for the Stat. Use it to look up the DestinyStatDefinition for static data about the stat.
	@JsonKey(name:'statHash')
	int statHash;

	/// The current value of the Stat.
	@JsonKey(name:'value')
	int value;

	/// The highest possible value for the stat, if we were able to compute it. (I wouldn&#39;t necessarily trust this value right now. I would like to improve its calculation in later iterations of the API. Consider this a placeholder for desired future functionality)
	@JsonKey(name:'maximumValue')
	int maximumValue;
	DestinyStat();

	factory DestinyStat.fromJson(Map<String, dynamic> json) => _$DestinyStatFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyStatToJson(this);
}
