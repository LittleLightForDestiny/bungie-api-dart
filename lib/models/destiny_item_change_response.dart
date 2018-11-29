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

	static DestinyItemChangeResponse fromJson(Map<String, dynamic> data){
		return new DestinyItemChangeResponse(
				DestinyItemResponse.fromJson(data['item']),
				DestinyItemComponent.fromList(data['addedInventoryItems']),
				DestinyItemComponent.fromList(data['removedInventoryItems']),
		);
	}

	static List<DestinyItemChangeResponse> fromList(List<dynamic> data){
		List<DestinyItemChangeResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyItemChangeResponse.fromJson(item));
    });
    return list;
	}
}