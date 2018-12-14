import 'destiny_profile_progression_component.dart';
class SingleComponentResponseOfDestinyProfileProgressionComponent{
	DestinyProfileProgressionComponent data;
	int privacy;
	SingleComponentResponseOfDestinyProfileProgressionComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyProfileProgressionComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyProfileProgressionComponent(
				data['data'] != null ? DestinyProfileProgressionComponent.fromMap(data['data']) : null,
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyProfileProgressionComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyProfileProgressionComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyProfileProgressionComponent.fromMap(item));
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