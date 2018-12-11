import 'destiny_item_component.dart';
class DestinyInventoryComponent{
	List<DestinyItemComponent> items;
	DestinyInventoryComponent(
		List<DestinyItemComponent> this.items,
	);

	static DestinyInventoryComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyInventoryComponent(
				DestinyItemComponent.fromList(data['items']),
		);
	}

	static List<DestinyInventoryComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyInventoryComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyInventoryComponent.fromJson(item));
    });
    return list;
	}
}