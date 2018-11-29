import 'destiny_item_sockets_component.dart';
class SingleComponentResponseOfDestinyItemSocketsComponent{
	DestinyItemSocketsComponent data;
	int privacy;
	SingleComponentResponseOfDestinyItemSocketsComponent(
		DestinyItemSocketsComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyItemSocketsComponent fromJson(Map<String, dynamic> data){
		return new SingleComponentResponseOfDestinyItemSocketsComponent(
				DestinyItemSocketsComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyItemSocketsComponent> fromList(List<dynamic> data){
		List<SingleComponentResponseOfDestinyItemSocketsComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyItemSocketsComponent.fromJson(item));
    });
    return list;
	}
}