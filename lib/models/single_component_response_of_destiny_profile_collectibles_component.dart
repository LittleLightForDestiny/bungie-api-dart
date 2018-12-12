import 'destiny_profile_collectibles_component.dart';
class SingleComponentResponseOfDestinyProfileCollectiblesComponent{
	DestinyProfileCollectiblesComponent data;
	int privacy;
	SingleComponentResponseOfDestinyProfileCollectiblesComponent(
		DestinyProfileCollectiblesComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyProfileCollectiblesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyProfileCollectiblesComponent(
				DestinyProfileCollectiblesComponent.fromMap(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyProfileCollectiblesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyProfileCollectiblesComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyProfileCollectiblesComponent.fromMap(item));
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