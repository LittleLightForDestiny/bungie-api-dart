import 'destiny_item_set_block_entry_definition.dart';
class DestinyItemSetBlockDefinition{
	List<DestinyItemSetBlockEntryDefinition> itemList;
	bool requireOrderedSetItemAdd;
	bool setIsFeatured;
	String setType;
	DestinyItemSetBlockDefinition(
		List<DestinyItemSetBlockEntryDefinition> this.itemList,
		bool this.requireOrderedSetItemAdd,
		bool this.setIsFeatured,
		String this.setType,
	);

	static DestinyItemSetBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemSetBlockDefinition(
				DestinyItemSetBlockEntryDefinition.fromList(data['itemList']),
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
			data['itemList'] = this.itemList.map((item)=>item.toMap()).toList();
			data['requireOrderedSetItemAdd'] = this.requireOrderedSetItemAdd;
			data['setIsFeatured'] = this.setIsFeatured;
			data['setType'] = this.setType;
		return data;
	}
}