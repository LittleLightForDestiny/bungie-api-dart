import 'destiny_inventory_component.dart';
class SingleComponentResponseOfDestinyInventoryComponent{
	DestinyInventoryComponent data;
	int privacy;
	SingleComponentResponseOfDestinyInventoryComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyInventoryComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyInventoryComponent(
				data['data'] != null ? DestinyInventoryComponent.fromMap(data['data']) : null,
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