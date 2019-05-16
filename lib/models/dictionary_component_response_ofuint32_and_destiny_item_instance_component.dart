import 'destiny_item_instance_component.dart';

/**  */
class DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent{
	
	/**  */
	Map<String, DestinyItemInstanceComponent> data;
	
	/**  */
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent(
				data['data'] != null ? Map<String, DestinyItemInstanceComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyItemInstanceComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent.fromMap(item));
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