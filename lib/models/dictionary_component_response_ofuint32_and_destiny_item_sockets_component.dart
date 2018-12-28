import 'destiny_item_sockets_component.dart';

/**  */
class DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent{
	
	/**  */
	Map<String, DestinyItemSocketsComponent> data;
	
	/** A set of flags for reason(s) why the component populated in the way that it did. Inspect the individual flags for the reasons. */
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent(
				data['data'] != null ? Map<String, DestinyItemSocketsComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyItemSocketsComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent.fromMap(item));
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