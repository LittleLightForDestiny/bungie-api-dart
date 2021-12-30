import 'package:json_annotation/json_annotation.dart';

import 'destiny_historical_stats_with_merged.dart';
import 'destiny_historical_stats_per_character.dart';

part 'destiny_historical_stats_account_result.g.dart';

@JsonSerializable()
class DestinyHistoricalStatsAccountResult{	
	DestinyHistoricalStatsAccountResult();

	factory DestinyHistoricalStatsAccountResult.fromJson(Map<String, dynamic> json) {
		return _$DestinyHistoricalStatsAccountResultFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsAccountResultToJson(this);
	
	@JsonKey(name:'mergedDeletedCharacters')
	DestinyHistoricalStatsWithMerged? mergedDeletedCharacters;
	
	@JsonKey(name:'mergedAllCharacters')
	DestinyHistoricalStatsWithMerged? mergedAllCharacters;
	
	@JsonKey(name:'characters')
	List<DestinyHistoricalStatsPerCharacter>? characters;
}