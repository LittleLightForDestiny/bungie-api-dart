import 'destiny_character_activities_component.dart';

/**  */
class DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent{
	
	/**  */
	Map<String, DestinyCharacterActivitiesComponent> data;
	
	/**  */
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent(
				data['data'] != null ? Map<String, DestinyCharacterActivitiesComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyCharacterActivitiesComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = this.data != null? this.data.map((i, v)=>MapEntry(i, v.toMap())) : null;
			data['privacy'] = this.privacy;
		return data;
	}
}