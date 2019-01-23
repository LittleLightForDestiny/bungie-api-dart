import 'destiny_historical_stats_with_merged.dart';
import 'destiny_historical_stats_per_character.dart';

/**  */
class DestinyHistoricalStatsAccountResult{
	
	/**  */
	DestinyHistoricalStatsWithMerged mergedDeletedCharacters;
	
	/**  */
	DestinyHistoricalStatsWithMerged mergedAllCharacters;
	
	/**  */
	List<DestinyHistoricalStatsPerCharacter> characters;
	DestinyHistoricalStatsAccountResult(
		this.mergedDeletedCharacters,
		this.mergedAllCharacters,
		this.characters,
	);

	static DestinyHistoricalStatsAccountResult fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyHistoricalStatsAccountResult(
				data['mergedDeletedCharacters'] != null ? DestinyHistoricalStatsWithMerged.fromMap(data['mergedDeletedCharacters']) : null,
				data['mergedAllCharacters'] != null ? DestinyHistoricalStatsWithMerged.fromMap(data['mergedAllCharacters']) : null,
				data['characters'] != null ? DestinyHistoricalStatsPerCharacter.fromList(data['characters']) : null,
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
			data['mergedDeletedCharacters'] = this.mergedDeletedCharacters != null? this.mergedDeletedCharacters.toMap() : null;
			data['mergedAllCharacters'] = this.mergedAllCharacters != null? this.mergedAllCharacters.toMap() : null;
			data['characters'] = this.characters != null? this.characters.map((item)=>item.toMap()).toList() : null;
		return data;
	}
}