import 'destiny_character_progression_component.dart';
class SingleComponentResponseOfDestinyCharacterProgressionComponent{
	DestinyCharacterProgressionComponent data;
	int privacy;
	SingleComponentResponseOfDestinyCharacterProgressionComponent(
		DestinyCharacterProgressionComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyCharacterProgressionComponent fromJson(Map<String, dynamic> data){
		return new SingleComponentResponseOfDestinyCharacterProgressionComponent(
				DestinyCharacterProgressionComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyCharacterProgressionComponent> fromList(List<dynamic> data){
		List<SingleComponentResponseOfDestinyCharacterProgressionComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyCharacterProgressionComponent.fromJson(item));
    });
    return list;
	}
}