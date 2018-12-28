import 'destiny_item_perks_component.dart';

/*  */
class SingleComponentResponseOfDestinyItemPerksComponent{
	
	/*  */
	DestinyItemPerksComponent data;
	
	/*  */
	int privacy;
	SingleComponentResponseOfDestinyItemPerksComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyItemPerksComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyItemPerksComponent(
				data['data'] != null ? DestinyItemPerksComponent.fromMap(data['data']) : null,
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyItemPerksComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyItemPerksComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyItemPerksComponent.fromMap(item));
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