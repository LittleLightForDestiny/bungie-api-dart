import 'package:json_annotation/json_annotation.dart';


part 'destiny_progression_reset_entry.g.dart';

/// Represents a season and the number of resets you had in that season.
///  We do not necessarily - even for progressions with resets - track it over all seasons. So be careful and check the season numbers being returned.
@JsonSerializable()
class DestinyProgressionResetEntry{
	
	DestinyProgressionResetEntry();

	factory DestinyProgressionResetEntry.fromJson(Map<String, dynamic> json) {
		return _$DestinyProgressionResetEntryFromJson(json);
	}

	@JsonKey(name:'season')
	int? season;
	@JsonKey(name:'resets')
	int? resets;

	
	
	Map<String, dynamic> toJson() => _$DestinyProgressionResetEntryToJson(this);
}