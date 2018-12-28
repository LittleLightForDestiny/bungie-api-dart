import 'destiny_item_perks_component.dart';

/**  */
class DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent{
	
	/**  */
	Map<String, DestinyItemPerksComponent> data;
	
	/** A set of flags for reason(s) why the component populated in the way that it did. Inspect the individual flags for the reasons. */
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent(
				data['data'] != null ? Map<String, DestinyItemPerksComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyItemPerksComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent.fromMap(item));
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