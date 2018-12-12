import 'destiny_character_component.dart';
class SingleComponentResponseOfDestinyCharacterComponent{
	DestinyCharacterComponent data;
	int privacy;
	SingleComponentResponseOfDestinyCharacterComponent(
		DestinyCharacterComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyCharacterComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyCharacterComponent(
				DestinyCharacterComponent.fromMap(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyCharacterComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyCharacterComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyCharacterComponent.fromMap(item));
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