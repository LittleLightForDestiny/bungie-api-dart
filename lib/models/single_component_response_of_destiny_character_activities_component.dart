import 'destiny_character_activities_component.dart';
class SingleComponentResponseOfDestinyCharacterActivitiesComponent{
	DestinyCharacterActivitiesComponent data;
	int privacy;
	SingleComponentResponseOfDestinyCharacterActivitiesComponent(
		DestinyCharacterActivitiesComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyCharacterActivitiesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyCharacterActivitiesComponent(
				DestinyCharacterActivitiesComponent.fromMap(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyCharacterActivitiesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyCharacterActivitiesComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyCharacterActivitiesComponent.fromMap(item));
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