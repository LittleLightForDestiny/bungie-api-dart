import 'destiny_historical_stats_with_merged.dart';
import 'destiny_historical_stats_with_merged.dart';
import 'destiny_historical_stats_per_character.dart';
class DestinyHistoricalStatsAccountResult{
	DestinyHistoricalStatsWithMerged mergedDeletedCharacters;
	DestinyHistoricalStatsWithMerged mergedAllCharacters;
	List<DestinyHistoricalStatsPerCharacter> characters;
	DestinyHistoricalStatsAccountResult(
		DestinyHistoricalStatsWithMerged this.mergedDeletedCharacters,
		DestinyHistoricalStatsWithMerged this.mergedAllCharacters,
		List<DestinyHistoricalStatsPerCharacter> this.characters,
	);

	static DestinyHistoricalStatsAccountResult fromJson(Map<String, dynamic> data){
		return new DestinyHistoricalStatsAccountResult(
				DestinyHistoricalStatsWithMerged.fromJson(data['mergedDeletedCharacters']),
				DestinyHistoricalStatsWithMerged.fromJson(data['mergedAllCharacters']),
				DestinyHistoricalStatsPerCharacter.fromList(data['characters']),
		);
	}

	static List<DestinyHistoricalStatsAccountResult> fromList(List<dynamic> data){
		List<DestinyHistoricalStatsAccountResult> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalStatsAccountResult.fromJson(item));
    });
    return list;
	}
}