import 'destiny_item_response.dart';
import 'destiny_item_component.dart';

/*  */
class DestinyItemChangeResponse{
	
	/*  */
	DestinyItemResponse item;
	
	/* Items that appeared in the inventory possibly as a result of an action. */
	List<DestinyItemComponent> addedInventoryItems;
	
	/* Items that disappeared from the inventory possibly as a result of an action. */
	List<DestinyItemComponent> removedInventoryItems;
	DestinyItemChangeResponse(
		this.item,
		this.addedInventoryItems,
		this.removedInventoryItems,
	);

	static DestinyItemChangeResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemChangeResponse(
				data['item'] != null ? DestinyItemResponse.fromMap(data['item']) : null,
				data['addedInventoryItems'] != null ? DestinyItemComponent.fromList(data['addedInventoryItems']) : null,
				data['removedInventoryItems'] != null ? DestinyItemComponent.fromList(data['removedInventoryItems']) : null,
		);
	}

	static List<DestinyItemChangeResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemChangeResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyItemChangeResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['item'] = this.item.toMap();
			data['addedInventoryItems'] = this.addedInventoryItems.map((item)=>item.toMap()).toList();
			data['removedInventoryItems'] = this.removedInventoryItems.map((item)=>item.toMap()).toList();
		return data;
	}
}