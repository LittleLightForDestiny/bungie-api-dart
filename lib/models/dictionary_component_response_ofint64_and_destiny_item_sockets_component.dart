import 'destiny_item_sockets_component.dart';

/**  */
class DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent{
	
	/**  */
	Map<String, DestinyItemSocketsComponent> data;
	
	/** A set of flags for reason(s) why the component populated in the way that it did. Inspect the individual flags for the reasons. */
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent(
				data['data'] != null ? Map<String, DestinyItemSocketsComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyItemSocketsComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent.fromMap(item));
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