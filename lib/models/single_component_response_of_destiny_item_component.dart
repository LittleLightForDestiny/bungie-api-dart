import 'destiny_item_component.dart';
class SingleComponentResponseOfDestinyItemComponent{
	DestinyItemComponent data;
	int privacy;
	SingleComponentResponseOfDestinyItemComponent(
		DestinyItemComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyItemComponent fromJson(Map<String, dynamic> data){
		return new SingleComponentResponseOfDestinyItemComponent(
				DestinyItemComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyItemComponent> fromList(List<dynamic> data){
		List<SingleComponentResponseOfDestinyItemComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyItemComponent.fromJson(item));
    });
    return list;
	}
}