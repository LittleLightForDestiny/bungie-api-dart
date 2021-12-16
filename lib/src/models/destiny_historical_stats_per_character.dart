import 'package:json_annotation/json_annotation.dart';

import 'destiny_historical_stats_by_period.dart';

part 'destiny_historical_stats_per_character.g.dart';

@JsonSerializable()
class DestinyHistoricalStatsPerCharacter{
	
	DestinyHistoricalStatsPerCharacter();

	factory DestinyHistoricalStatsPerCharacter.fromJson(Map<String, dynamic> json) {
		return _$DestinyHistoricalStatsPerCharacterFromJson(json);
	}

	@JsonKey(name:'characterId')
	String? characterId;
	@JsonKey(name:'deleted')
	bool? deleted;
	@JsonKey(name:'results')
	Map<String, DestinyHistoricalStatsByPeriod>? results;
	@JsonKey(name:'merged')
	DestinyHistoricalStatsByPeriod? merged;

	
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsPerCharacterToJson(this);
}