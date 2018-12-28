import 'destiny_item_socket_entry_definition.dart';
import 'destiny_item_intrinsic_socket_entry_definition.dart';
import 'destiny_item_socket_category_definition.dart';

/* If defined, the item has at least one socket. */
class DestinyItemSocketBlockDefinition{
	
	/* This was supposed to be a string that would give per-item details about sockets. In practice, it turns out that all this ever has is the localized word "details". ... that's lame, but perhaps it will become something cool in the future. */
	String detail;
	
	/* Each non-intrinsic (or mutable) socket on an item is defined here. Check inside for more info. */
	List<DestinyItemSocketEntryDefinition> socketEntries;
	
	/* Each intrinsic (or immutable/permanent) socket on an item is defined here, along with the plug that is permanently affixed to the socket. */
	List<DestinyItemIntrinsicSocketEntryDefinition> intrinsicSockets;
	
	/* A convenience property, that refers to the sockets in the "sockets" property, pre-grouped by category and ordered in the manner that they should be grouped in the UI. You could form this yourself with the existing data, but why would you want to? Enjoy life man. */
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