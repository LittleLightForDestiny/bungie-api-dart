import 'destiny_item_response.dart';
import 'destiny_item_component.dart';
import 'destiny_item_component.dart';
class DestinyItemChangeResponse{
	DestinyItemResponse item;
	List<DestinyItemComponent> addedInventoryItems;
	List<DestinyItemComponent> removedInventoryItems;
	DestinyItemChangeResponse(
		DestinyItemResponse this.item,
		List<DestinyItemComponent> this.addedInventoryItems,
		List<DestinyItemComponent> this.removedInventoryItems,
	);

	static DestinyItemChangeResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemChangeResponse(
				DestinyItemResponse.fromMap(data['item']),
				DestinyItemComponent.fromList(data['addedInventoryItems']),
				DestinyItemComponent.fromList(data['removedInventoryItems']),
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
			data['item'] = item.toMap();
			data['addedInventoryItems'] = addedInventoryItems.map((item)=>item.toMap());
			data['removedInventoryItems'] = removedInventoryItems.map((item)=>item.toMap());
	}
}