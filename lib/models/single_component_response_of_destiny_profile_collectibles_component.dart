import 'destiny_profile_collectibles_component.dart';
class SingleComponentResponseOfDestinyProfileCollectiblesComponent{
	DestinyProfileCollectiblesComponent data;
	int privacy;
	SingleComponentResponseOfDestinyProfileCollectiblesComponent(
		DestinyProfileCollectiblesComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyProfileCollectiblesComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyProfileCollectiblesComponent(
				DestinyProfileCollectiblesComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyProfileCollectiblesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyProfileCollectiblesComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyProfileCollectiblesComponent.fromJson(item));
    });
    return list;
	}
}