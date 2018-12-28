import 'destiny_item_instance_component.dart';

/**  */
class DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent{
	
	/**  */
	Map<String, DestinyItemInstanceComponent> data;
	
	/** A set of flags for reason(s) why the component populated in the way that it did. Inspect the individual flags for the reasons. */
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent(
				data['data'] != null ? Map<String, DestinyItemInstanceComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyItemInstanceComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent.fromMap(item));
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