import 'destiny_item_component.dart';
class SingleComponentResponseOfDestinyItemComponent{
	DestinyItemComponent data;
	int privacy;
	SingleComponentResponseOfDestinyItemComponent(
		DestinyItemComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyItemComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyItemComponent(
				DestinyItemComponent.fromMap(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyItemComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyItemComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyItemComponent.fromMap(item));
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