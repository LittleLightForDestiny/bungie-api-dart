import 'destiny_character_progression_component.dart';
class DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent{
	Map<String, DestinyCharacterProgressionComponent> data;
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent(
				data['data'] != null ? Map<String, DestinyCharacterProgressionComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyCharacterProgressionComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = this.data;
			data['privacy'] = this.privacy;
		return data;
	}
}