import 'destiny_character_progression_component.dart';
class SingleComponentResponseOfDestinyCharacterProgressionComponent{
	DestinyCharacterProgressionComponent data;
	int privacy;
	SingleComponentResponseOfDestinyCharacterProgressionComponent(
		DestinyCharacterProgressionComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyCharacterProgressionComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyCharacterProgressionComponent(
				DestinyCharacterProgressionComponent.fromMap(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyCharacterProgressionComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyCharacterProgressionComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyCharacterProgressionComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = data.toMap();
			data['privacy'] = privacy;
	}
}