import 'destiny_character_records_component.dart';
class DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent{
	Map<String, DestinyCharacterRecordsComponent> data;
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent(
				data['data'] != null ? Map<String, DestinyCharacterRecordsComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyCharacterRecordsComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent.fromMap(item));
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