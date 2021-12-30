import 'package:json_annotation/json_annotation.dart';


part 'destiny_stat.g.dart';

/// Represents a stat on an item *or* Character (NOT a Historical Stat, but a physical attribute stat like Attack, Defense etc...)
@JsonSerializable()
class DestinyStat{	
	DestinyStat();

	factory DestinyStat.fromJson(Map<String, dynamic> json) {
		return _$DestinyStatFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyStatToJson(this);
	
	/// The hash identifier for the Stat. Use it to look up the DestinyStatDefinition for static data about the stat.
	@JsonKey(name:'statHash')
	int? statHash;
	
	/// The current value of the Stat.
	@JsonKey(name:'value')
	int? value;
}