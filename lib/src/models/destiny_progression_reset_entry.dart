import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_progression_reset_entry.g.dart';

/// Represents a season and the number of resets you had in that season.
///  We do not necessarily - even for progressions with resets - track it over all seasons. So be careful and check the season numbers being returned.
@JsonSerializable()
class DestinyProgressionResetEntry{	
	DestinyProgressionResetEntry();

	
	@JsonKey(name:'season')
	int? season;
	
	@JsonKey(name:'resets')
	int? resets;

	factory DestinyProgressionResetEntry.fromJson(Map<String, dynamic> json) {
		return _$DestinyProgressionResetEntryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyProgressionResetEntryToJson(this);

	static Future<DestinyProgressionResetEntry> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyProgressionResetEntry>((json)=>DestinyProgressionResetEntry.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}