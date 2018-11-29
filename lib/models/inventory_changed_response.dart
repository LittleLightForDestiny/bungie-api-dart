import 'destiny_item_component.dart';
import 'destiny_item_component.dart';
class InventoryChangedResponse{
	List<DestinyItemComponent> addedInventoryItems;
	List<DestinyItemComponent> removedInventoryItems;
	InventoryChangedResponse(
		List<DestinyItemComponent> this.addedInventoryItems,
		List<DestinyItemComponent> this.removedInventoryItems,
	);

	static InventoryChangedResponse fromJson(Map<String, dynamic> data){
		return new InventoryChangedResponse(
				DestinyItemComponent.fromList(data['addedInventoryItems']),
				DestinyItemComponent.fromList(data['removedInventoryItems']),
		);
	}

	static List<InventoryChangedResponse> fromList(List<dynamic> data){
		List<InventoryChangedResponse> list = new List();
    data.forEach((item) {
      list.add(InventoryChangedResponse.fromJson(item));
    });
    return list;
	}
}