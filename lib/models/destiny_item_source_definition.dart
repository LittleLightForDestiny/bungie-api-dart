import 'destiny_inventory_item_stat_definition.dart';
class DestinyItemSourceDefinition{
	int level;
	int minQuality;
	int maxQuality;
	int minLevelRequired;
	int maxLevelRequired;
	Map<String, DestinyInventoryItemStatDefinition> computedStats;
	List<int> sourceHashes;
	DestinyItemSourceDefinition(
		this.level,
		this.minQuality,
		this.maxQuality,
		this.minLevelRequired,
		this.maxLevelRequired,
		this.computedStats,
		this.sourceHashes,
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
				data['computedStats'] != null ? Map<String, DestinyInventoryItemStatDefinition>.from(data['computedStats'].map((k, v)=>MapEntry(k, DestinyInventoryItemStatDefinition.fromMap(v)))) : null,
				data['sourceHashes'] != null ? data['sourceHashes']?.cast<int>() ?? null : null,
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
			data['level'] = this.level;
			data['minQuality'] = this.minQuality;
			data['maxQuality'] = this.maxQuality;
			data['minLevelRequired'] = this.minLevelRequired;
			data['maxLevelRequired'] = this.maxLevelRequired;
			data['computedStats'] = this.computedStats;
			data['sourceHashes'] = this.sourceHashes;
		return data;
	}
}