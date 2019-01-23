import 'destiny_inventory_item_stat_definition.dart';

/** Properties of a DestinyInventoryItemDefinition that store all of the information we were able to discern about how the item spawns, and where you can find the item.
Items will have many of these sources, one per level at which it spawns, to try and give more granular data about where items spawn for specific level ranges. */
class DestinyItemSourceDefinition{
	
	/** The level at which the item spawns. Essentially the Primary Key for this source data: there will be multiple of these source entries per item that has source data, grouped by the level at which the item spawns. */
	int level;
	
	/** The minimum Quality at which the item spawns for this level. Examine DestinyInventoryItemDefinition for more information about what Quality means. Just don't ask Phaedrus about it, he'll never stop talking and you'll have to write a book about it. */
	int minQuality;
	
	/** The maximum quality at which the item spawns for this level. */
	int maxQuality;
	
	/** The minimum Character Level required for equipping the item when the item spawns at the item level defined on this DestinyItemSourceDefinition, as far as we saw in our processing. */
	int minLevelRequired;
	
	/** The maximum Character Level required for equipping the item when the item spawns at the item level defined on this DestinyItemSourceDefinition, as far as we saw in our processing. */
	int maxLevelRequired;
	
	/** The stats computed for this level/quality range. */
	Map<String, DestinyInventoryItemStatDefinition> computedStats;
	
	/** The DestinyRewardSourceDefinitions found that can spawn the item at this level. */
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
			data['computedStats'] = this.computedStats != null? this.computedStats.map((i, v)=>MapEntry(i, v.toMap())) : null;
			data['sourceHashes'] = this.sourceHashes;
		return data;
	}
}