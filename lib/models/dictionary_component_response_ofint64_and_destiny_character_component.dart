import 'destiny_character_component.dart';

/*  */
class DictionaryComponentResponseOfint64AndDestinyCharacterComponent{
	
	/*  */
	Map<String, DestinyCharacterComponent> data;
	
	/*  */
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyCharacterComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyCharacterComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint64AndDestinyCharacterComponent(
				data['data'] != null ? Map<String, DestinyCharacterComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyCharacterComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyCharacterComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint64AndDestinyCharacterComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyCharacterComponent.fromMap(item));
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