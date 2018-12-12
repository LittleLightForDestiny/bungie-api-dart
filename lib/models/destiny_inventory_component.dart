import 'destiny_item_component.dart';
class DestinyInventoryComponent{
	List<DestinyItemComponent> items;
	DestinyInventoryComponent(
		List<DestinyItemComponent> this.items,
	);

	static DestinyInventoryComponent fromMap(Map<String, dynamic> data){
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
      list.add(DestinyInventoryComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['items'] = items.map((item)=>item.toMap());
	}
}