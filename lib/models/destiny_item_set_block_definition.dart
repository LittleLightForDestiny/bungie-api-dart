import 'destiny_item_set_block_entry_definition.dart';

/** Primarily for Quests, this is the definition of properties related to the item if it is a quest and its various quest steps. */
class DestinyItemSetBlockDefinition{
	
	/** A collection of hashes of set items, for items such as Quest Metadata items that possess this data. */
	List<DestinyItemSetBlockEntryDefinition> itemList;
	
	/** If true, items in the set can only be added in increasing order, and adding an item will remove any previous item. For Quests, this is by necessity true. Only one quest step is present at a time, and previous steps are removed as you advance in the quest. */
	bool requireOrderedSetItemAdd;
	
	/** If true, the UI should treat this quest as "featured" */
	bool setIsFeatured;
	
	/** A string identifier we can use to attempt to identify the category of the Quest. */
	String setType;
	DestinyItemSetBlockDefinition(
		this.itemList,
		this.requireOrderedSetItemAdd,
		this.setIsFeatured,
		this.setType,
	);

	static DestinyItemSetBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemSetBlockDefinition(
				data['itemList'] != null ? DestinyItemSetBlockEntryDefinition.fromList(data['itemList']) : null,
				data['requireOrderedSetItemAdd'],
				data['setIsFeatured'],
				data['setType'],
		);
	}

	static List<DestinyItemSetBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemSetBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSetBlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['itemList'] = this.itemList != null? this.itemList.map((item)=>item.toMap()).toList() : null;
			data['requireOrderedSetItemAdd'] = this.requireOrderedSetItemAdd;
			data['setIsFeatured'] = this.setIsFeatured;
			data['setType'] = this.setType;
		return data;
	}
}