import 'destiny_item_component.dart';

/* A response containing all of the components for all requested vendors. */
class InventoryChangedResponse{
	
	/* Items that appeared in the inventory possibly as a result of an action. */
	List<DestinyItemComponent> addedInventoryItems;
	
	/* Items that disappeared from the inventory possibly as a result of an action. */
	List<DestinyItemComponent> removedInventoryItems;
	InventoryChangedResponse(
		this.addedInventoryItems,
		this.removedInventoryItems,
	);

	static InventoryChangedResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new InventoryChangedResponse(
				data['addedInventoryItems'] != null ? DestinyItemComponent.fromList(data['addedInventoryItems']) : null,
				data['removedInventoryItems'] != null ? DestinyItemComponent.fromList(data['removedInventoryItems']) : null,
		);
	}

	static List<InventoryChangedResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<InventoryChangedResponse> list = new List();
    data.forEach((item) {
      list.add(InventoryChangedResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['addedInventoryItems'] = this.addedInventoryItems.map((item)=>item.toMap()).toList();
			data['removedInventoryItems'] = this.removedInventoryItems.map((item)=>item.toMap()).toList();
		return data;
	}
}