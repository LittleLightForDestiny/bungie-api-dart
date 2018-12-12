import 'destiny_profile_component.dart';
class SingleComponentResponseOfDestinyProfileComponent{
	DestinyProfileComponent data;
	int privacy;
	SingleComponentResponseOfDestinyProfileComponent(
		DestinyProfileComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyProfileComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyProfileComponent(
				DestinyProfileComponent.fromMap(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyProfileComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyProfileComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyProfileComponent.fromMap(item));
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