import 'destiny_character_activities_component.dart';
class DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent{
	Map<DestinyCharacterActivitiesComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent(
		Map<DestinyCharacterActivitiesComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent.fromJson(item));
    });
    return list;
	}
}