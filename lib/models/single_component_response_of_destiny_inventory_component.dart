import 'destiny_inventory_component.dart';
class SingleComponentResponseOfDestinyInventoryComponent{
	DestinyInventoryComponent data;
	int privacy;
	SingleComponentResponseOfDestinyInventoryComponent(
		DestinyInventoryComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyInventoryComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyInventoryComponent(
				DestinyInventoryComponent.fromMap(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyInventoryComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyInventoryComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyInventoryComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = this.data.toMap();
			data['privacy'] = this.privacy;
		return data;
	}
}