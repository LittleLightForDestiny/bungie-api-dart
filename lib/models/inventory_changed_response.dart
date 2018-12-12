import 'destiny_item_component.dart';
import 'destiny_item_component.dart';
class InventoryChangedResponse{
	List<DestinyItemComponent> addedInventoryItems;
	List<DestinyItemComponent> removedInventoryItems;
	InventoryChangedResponse(
		List<DestinyItemComponent> this.addedInventoryItems,
		List<DestinyItemComponent> this.removedInventoryItems,
	);

	static InventoryChangedResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new InventoryChangedResponse(
				DestinyItemComponent.fromList(data['addedInventoryItems']),
				DestinyItemComponent.fromList(data['removedInventoryItems']),
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
			data['addedInventoryItems'] = this.addedInventoryItems.map((item)=>item.toMap());
			data['removedInventoryItems'] = this.removedInventoryItems.map((item)=>item.toMap());
		return data;
	}
}