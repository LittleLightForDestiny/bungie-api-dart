import 'destiny_historical_stats_by_period.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_historical_stats_per_character.g.dart';

@JsonSerializable()
class DestinyHistoricalStatsPerCharacter {

	@JsonKey(name:'characterId')
	String characterId;

	@JsonKey(name:'deleted')
	bool deleted;

	@JsonKey(name:'results')
	Map<String, DestinyHistoricalStatsByPeriod> results;

	@JsonKey(name:'merged')
	DestinyHistoricalStatsByPeriod merged;
	DestinyHistoricalStatsPerCharacter();

	factory DestinyHistoricalStatsPerCharacter.fromJson(Map<String, dynamic> json) => _$DestinyHistoricalStatsPerCharacterFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsPerCharacterToJson(this);
}
