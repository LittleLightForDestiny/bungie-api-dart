import 'destiny_item_instance_component.dart';
class SingleComponentResponseOfDestinyItemInstanceComponent{
	DestinyItemInstanceComponent data;
	int privacy;
	SingleComponentResponseOfDestinyItemInstanceComponent(
		DestinyItemInstanceComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyItemInstanceComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyItemInstanceComponent(
				DestinyItemInstanceComponent.fromMap(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyItemInstanceComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyItemInstanceComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyItemInstanceComponent.fromMap(item));
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