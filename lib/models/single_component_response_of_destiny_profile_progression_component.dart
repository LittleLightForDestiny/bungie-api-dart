import 'destiny_profile_progression_component.dart';
class SingleComponentResponseOfDestinyProfileProgressionComponent{
	DestinyProfileProgressionComponent data;
	int privacy;
	SingleComponentResponseOfDestinyProfileProgressionComponent(
		DestinyProfileProgressionComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyProfileProgressionComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyProfileProgressionComponent(
				DestinyProfileProgressionComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyProfileProgressionComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyProfileProgressionComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyProfileProgressionComponent.fromJson(item));
    });
    return list;
	}
}