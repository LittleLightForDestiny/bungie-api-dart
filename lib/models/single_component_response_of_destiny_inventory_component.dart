import 'destiny_inventory_component.dart';
class SingleComponentResponseOfDestinyInventoryComponent{
	DestinyInventoryComponent data;
	int privacy;
	SingleComponentResponseOfDestinyInventoryComponent(
		DestinyInventoryComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyInventoryComponent fromJson(Map<String, dynamic> data){
		return new SingleComponentResponseOfDestinyInventoryComponent(
				DestinyInventoryComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyInventoryComponent> fromList(List<dynamic> data){
		List<SingleComponentResponseOfDestinyInventoryComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyInventoryComponent.fromJson(item));
    });
    return list;
	}
}