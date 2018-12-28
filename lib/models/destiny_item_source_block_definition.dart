import 'destiny_item_source_definition.dart';

/** Data about an item's "sources": ways that the item can be obtained. */
class DestinyItemSourceBlockDefinition{
	
	/** The list of hash identifiers for Reward Sources that hint where the item can be found (DestinyRewardSourceDefinition). */
	List<int> sourceHashes;
	
	/** A collection of details about the stats that were computed for the ways we found that the item could be spawned. */
	List<DestinyItemSourceDefinition> sources;
	
	/** If we found that this item is exclusive to a specific platform, this will be set to the BungieMembershipType enumeration that matches that platform. */
	int exclusive;
	DestinyItemSourceBlockDefinition(
		this.sourceHashes,
		this.sources,
		this.exclusive,
	);

	static DestinyItemSourceBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemSourceBlockDefinition(
				data['sourceHashes'] != null ? data['sourceHashes']?.cast<int>() ?? null : null,
				data['sources'] != null ? DestinyItemSourceDefinition.fromList(data['sources']) : null,
				data['exclusive'],
		);
	}

	static List<DestinyItemSourceBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemSourceBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSourceBlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['sourceHashes'] = this.sourceHashes;
			data['sources'] = this.sources.map((item)=>item.toMap()).toList();
			data['exclusive'] = this.exclusive;
		return data;
	}
}