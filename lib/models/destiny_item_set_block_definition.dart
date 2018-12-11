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

	static DestinyItemSetBlockDefinition fromJson(Map<String, dynamic> data){
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
      list.add(DestinyItemSetBlockDefinition.fromJson(item));
    });
    return list;
	}
}