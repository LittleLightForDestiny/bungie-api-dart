import 'destiny_item_socket_entry_definition.dart';
import 'destiny_item_intrinsic_socket_entry_definition.dart';
import 'destiny_item_socket_category_definition.dart';
class DestinyItemSocketBlockDefinition{
	String detail;
	List<DestinyItemSocketEntryDefinition> socketEntries;
	List<DestinyItemIntrinsicSocketEntryDefinition> intrinsicSockets;
	List<DestinyItemSocketCategoryDefinition> socketCategories;
	DestinyItemSocketBlockDefinition(
		this.detail,
		this.socketEntries,
		this.intrinsicSockets,
		this.socketCategories,
	);

	static DestinyItemSocketBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemSocketBlockDefinition(
				data['detail'],
				data['socketEntries'] != null ? DestinyItemSocketEntryDefinition.fromList(data['socketEntries']) : null,
				data['intrinsicSockets'] != null ? DestinyItemIntrinsicSocketEntryDefinition.fromList(data['intrinsicSockets']) : null,
				data['socketCategories'] != null ? DestinyItemSocketCategoryDefinition.fromList(data['socketCategories']) : null,
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
			data['detail'] = this.detail;
			data['socketEntries'] = this.socketEntries.map((item)=>item.toMap()).toList();
			data['intrinsicSockets'] = this.intrinsicSockets.map((item)=>item.toMap()).toList();
			data['socketCategories'] = this.socketCategories.map((item)=>item.toMap()).toList();
		return data;
	}
}