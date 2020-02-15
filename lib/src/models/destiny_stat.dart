import 'package:json_annotation/json_annotation.dart';


part 'destiny_stat.g.dart';

/// Represents a stat on an item *or* Character (NOT a Historical Stat, but a physical attribute stat like Attack, Defense etc...)
@JsonSerializable()
class DestinyStat{
	
	DestinyStat();

	factory DestinyStat.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyStatFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The hash identifier for the Stat. Use it to look up the DestinyStatDefinition for static data about the stat.
	@JsonKey(name:'statHash')
	int statHash;
	/// The current value of the Stat.
	@JsonKey(name:'value')
	int value;

	
	
	Map<String, dynamic> toJson() => _$DestinyStatToJson(this);
}