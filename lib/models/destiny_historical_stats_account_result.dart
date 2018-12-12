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

	static DestinyHistoricalStatsAccountResult fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyHistoricalStatsAccountResult(
				DestinyHistoricalStatsWithMerged.fromMap(data['mergedDeletedCharacters']),
				DestinyHistoricalStatsWithMerged.fromMap(data['mergedAllCharacters']),
				DestinyHistoricalStatsPerCharacter.fromList(data['characters']),
		);
	}

	static List<DestinyHistoricalStatsAccountResult> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyHistoricalStatsAccountResult> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalStatsAccountResult.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['mergedDeletedCharacters'] = this.mergedDeletedCharacters.toMap();
			data['mergedAllCharacters'] = this.mergedAllCharacters.toMap();
			data['characters'] = this.characters.map((item)=>item.toMap()).toList();
		return data;
	}
}