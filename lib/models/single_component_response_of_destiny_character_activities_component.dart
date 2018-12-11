import 'destiny_character_activities_component.dart';
class SingleComponentResponseOfDestinyCharacterActivitiesComponent{
	DestinyCharacterActivitiesComponent data;
	int privacy;
	SingleComponentResponseOfDestinyCharacterActivitiesComponent(
		DestinyCharacterActivitiesComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyCharacterActivitiesComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyCharacterActivitiesComponent(
				DestinyCharacterActivitiesComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyCharacterActivitiesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyCharacterActivitiesComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyCharacterActivitiesComponent.fromJson(item));
    });
    return list;
	}
}