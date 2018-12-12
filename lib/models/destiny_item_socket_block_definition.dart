import 'destiny_item_socket_entry_definition.dart';
import 'destiny_item_intrinsic_socket_entry_definition.dart';
import 'destiny_item_socket_category_definition.dart';
class DestinyItemSocketBlockDefinition{
	String detail;
	List<DestinyItemSocketEntryDefinition> socketEntries;
	List<DestinyItemIntrinsicSocketEntryDefinition> intrinsicSockets;
	List<DestinyItemSocketCategoryDefinition> socketCategories;
	DestinyItemSocketBlockDefinition(
		String this.detail,
		List<DestinyItemSocketEntryDefinition> this.socketEntries,
		List<DestinyItemIntrinsicSocketEntryDefinition> this.intrinsicSockets,
		List<DestinyItemSocketCategoryDefinition> this.socketCategories,
	);

	static DestinyItemSocketBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemSocketBlockDefinition(
				data['detail'],
				DestinyItemSocketEntryDefinition.fromList(data['socketEntries']),
				DestinyItemIntrinsicSocketEntryDefinition.fromList(data['intrinsicSockets']),
				DestinyItemSocketCategoryDefinition.fromList(data['socketCategories']),
		);
	}

	static List<DestinyItemSocketBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemSocketBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSocketBlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['detail'] = detail;
			data['socketEntries'] = socketEntries.map((item)=>item.toMap());
			data['intrinsicSockets'] = intrinsicSockets.map((item)=>item.toMap());
			data['socketCategories'] = socketCategories.map((item)=>item.toMap());
	}
}