import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_historical_stats_by_period.dart';

part 'destiny_historical_stats_per_character.g.dart';

@JsonSerializable()
class DestinyHistoricalStatsPerCharacter{	
	DestinyHistoricalStatsPerCharacter();

	
	@JsonKey(name:'characterId')
	String? characterId;
	
	@JsonKey(name:'deleted')
	bool? deleted;
	
	@JsonKey(name:'results')
	Map<String, DestinyHistoricalStatsByPeriod>? results;
	
	@JsonKey(name:'merged')
	DestinyHistoricalStatsByPeriod? merged;

	factory DestinyHistoricalStatsPerCharacter.fromJson(Map<String, dynamic> json) {
		return _$DestinyHistoricalStatsPerCharacterFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsPerCharacterToJson(this);

	static Future<DestinyHistoricalStatsPerCharacter> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyHistoricalStatsPerCharacter>((json)=>DestinyHistoricalStatsPerCharacter.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}