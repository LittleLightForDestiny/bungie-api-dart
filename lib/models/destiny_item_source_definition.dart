import 'destiny_inventory_item_stat_definition.dart';
class DestinyItemSourceDefinition{
	int level;
	int minQuality;
	int maxQuality;
	int minLevelRequired;
	int maxLevelRequired;
	Map<DestinyInventoryItemStatDefinition, dynamic> computedStats;
	List<int> sourceHashes;
	DestinyItemSourceDefinition(
		int this.level,
		int this.minQuality,
		int this.maxQuality,
		int this.minLevelRequired,
		int this.maxLevelRequired,
		Map<DestinyInventoryItemStatDefinition, dynamic> this.computedStats,
		List<int> this.sourceHashes,
	);

	static DestinyItemSourceDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemSourceDefinition(
				data['level'],
				data['minQuality'],
				data['maxQuality'],
				data['minLevelRequired'],
				data['maxLevelRequired'],
				data['computedStats'],
				data['sourceHashes'],
		);
	}

	static List<DestinyItemSourceDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemSourceDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSourceDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['level'] = level;
			data['minQuality'] = minQuality;
			data['maxQuality'] = maxQuality;
			data['minLevelRequired'] = minLevelRequired;
			data['maxLevelRequired'] = maxLevelRequired;
			data['computedStats'] = computedStats;
			data['sourceHashes'] = sourceHashes;
	}
}