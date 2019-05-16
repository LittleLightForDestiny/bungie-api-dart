import 'destiny_plug_sets_component.dart';

/**  */
class DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent{
	
	/**  */
	Map<String, DestinyPlugSetsComponent> data;
	
	/**  */
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent(
				data['data'] != null ? Map<String, DestinyPlugSetsComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyPlugSetsComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent.fromMap(item));
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