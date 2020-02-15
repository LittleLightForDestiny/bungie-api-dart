import 'package:json_annotation/json_annotation.dart';

import 'destiny_historical_stats_by_period.dart';

part 'destiny_historical_stats_per_character.g.dart';

@JsonSerializable()
class DestinyHistoricalStatsPerCharacter{
	
	DestinyHistoricalStatsPerCharacter();

	factory DestinyHistoricalStatsPerCharacter.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyHistoricalStatsPerCharacterFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'characterId')
	String characterId;
	@JsonKey(name:'deleted')
	bool deleted;
	@JsonKey(name:'results')
	Map<String, DestinyHistoricalStatsByPeriod> results;
	@JsonKey(name:'merged')
	DestinyHistoricalStatsByPeriod merged;

	
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsPerCharacterToJson(this);
}