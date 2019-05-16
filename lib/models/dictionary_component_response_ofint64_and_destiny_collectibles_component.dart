import 'destiny_collectibles_component.dart';

/**  */
class DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent{
	
	/**  */
	Map<String, DestinyCollectiblesComponent> data;
	
	/**  */
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent(
				data['data'] != null ? Map<String, DestinyCollectiblesComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyCollectiblesComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent.fromMap(item));
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