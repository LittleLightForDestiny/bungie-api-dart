import 'destiny_item_perks_component.dart';
class SingleComponentResponseOfDestinyItemPerksComponent{
	DestinyItemPerksComponent data;
	int privacy;
	SingleComponentResponseOfDestinyItemPerksComponent(
		DestinyItemPerksComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyItemPerksComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyItemPerksComponent(
				DestinyItemPerksComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyItemPerksComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyItemPerksComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyItemPerksComponent.fromJson(item));
    });
    return list;
	}
}