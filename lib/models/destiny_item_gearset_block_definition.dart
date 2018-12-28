
/** If an item has a related gearset, this is the list of items in that set, and an unlock expression that evaluates to a number representing the progress toward gearset completion (a very rare use for unlock expressions!) */
class DestinyItemGearsetBlockDefinition{
	
	/** The maximum possible number of items that can be collected. */
	int trackingValueMax;
	
	/** The list of hashes for items in the gearset. Use them to look up DestinyInventoryItemDefinition entries for the items in the set. */
	List<int> itemList;
	DestinyItemGearsetBlockDefinition(
		this.trackingValueMax,
		this.itemList,
	);

	static DestinyItemGearsetBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemGearsetBlockDefinition(
				data['trackingValueMax'],
				data['itemList'] != null ? data['itemList']?.cast<int>() ?? null : null,
		);
	}

	static List<DestinyItemGearsetBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemGearsetBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemGearsetBlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['trackingValueMax'] = this.trackingValueMax;
			data['itemList'] = this.itemList;
		return data;
	}
}