import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_historical_stats_with_merged.dart';
import 'destiny_historical_stats_per_character.dart';

part 'destiny_historical_stats_account_result.g.dart';

@JsonSerializable()
class DestinyHistoricalStatsAccountResult{	
	DestinyHistoricalStatsAccountResult();

	
	@JsonKey(name:'mergedDeletedCharacters')
	DestinyHistoricalStatsWithMerged? mergedDeletedCharacters;
	
	@JsonKey(name:'mergedAllCharacters')
	DestinyHistoricalStatsWithMerged? mergedAllCharacters;
	
	@JsonKey(name:'characters')
	List<DestinyHistoricalStatsPerCharacter>? characters;

	factory DestinyHistoricalStatsAccountResult.fromJson(Map<String, dynamic> json) {
		return _$DestinyHistoricalStatsAccountResultFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsAccountResultToJson(this);

	static Future<DestinyHistoricalStatsAccountResult> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyHistoricalStatsAccountResult>((json)=>DestinyHistoricalStatsAccountResult.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}