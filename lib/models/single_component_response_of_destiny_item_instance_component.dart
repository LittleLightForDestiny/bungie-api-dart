import 'destiny_item_instance_component.dart';
class SingleComponentResponseOfDestinyItemInstanceComponent{
	DestinyItemInstanceComponent data;
	int privacy;
	SingleComponentResponseOfDestinyItemInstanceComponent(
		DestinyItemInstanceComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyItemInstanceComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyItemInstanceComponent(
				DestinyItemInstanceComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyItemInstanceComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyItemInstanceComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyItemInstanceComponent.fromJson(item));
    });
    return list;
	}
}