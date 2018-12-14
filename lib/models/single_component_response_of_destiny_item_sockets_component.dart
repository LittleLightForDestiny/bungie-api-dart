import 'destiny_item_sockets_component.dart';
class SingleComponentResponseOfDestinyItemSocketsComponent{
	DestinyItemSocketsComponent data;
	int privacy;
	SingleComponentResponseOfDestinyItemSocketsComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyItemSocketsComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyItemSocketsComponent(
				data['data'] != null ? DestinyItemSocketsComponent.fromMap(data['data']) : null,
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyItemSocketsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyItemSocketsComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyItemSocketsComponent.fromMap(item));
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