import 'destiny_character_component.dart';
class SingleComponentResponseOfDestinyCharacterComponent{
	DestinyCharacterComponent data;
	int privacy;
	SingleComponentResponseOfDestinyCharacterComponent(
		DestinyCharacterComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyCharacterComponent fromJson(Map<String, dynamic> data){
		return new SingleComponentResponseOfDestinyCharacterComponent(
				DestinyCharacterComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyCharacterComponent> fromList(List<dynamic> data){
		List<SingleComponentResponseOfDestinyCharacterComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyCharacterComponent.fromJson(item));
    });
    return list;
	}
}