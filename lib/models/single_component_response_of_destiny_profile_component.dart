import 'destiny_profile_component.dart';
class SingleComponentResponseOfDestinyProfileComponent{
	DestinyProfileComponent data;
	int privacy;
	SingleComponentResponseOfDestinyProfileComponent(
		DestinyProfileComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyProfileComponent fromJson(Map<String, dynamic> data){
		return new SingleComponentResponseOfDestinyProfileComponent(
				DestinyProfileComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyProfileComponent> fromList(List<dynamic> data){
		List<SingleComponentResponseOfDestinyProfileComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyProfileComponent.fromJson(item));
    });
    return list;
	}
}