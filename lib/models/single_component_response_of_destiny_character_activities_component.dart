import 'destiny_character_activities_component.dart';

/*  */
class SingleComponentResponseOfDestinyCharacterActivitiesComponent{
	
	/*  */
	DestinyCharacterActivitiesComponent data;
	
	/*  */
	int privacy;
	SingleComponentResponseOfDestinyCharacterActivitiesComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyCharacterActivitiesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyCharacterActivitiesComponent(
				data['data'] != null ? DestinyCharacterActivitiesComponent.fromMap(data['data']) : null,
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