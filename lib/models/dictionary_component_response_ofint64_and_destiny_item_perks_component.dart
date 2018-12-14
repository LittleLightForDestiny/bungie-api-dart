import 'destiny_item_perks_component.dart';
class DictionaryComponentResponseOfint64AndDestinyItemPerksComponent{
	Map<String, DestinyItemPerksComponent> data;
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyItemPerksComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyItemPerksComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint64AndDestinyItemPerksComponent(
				data['data'] != null ? Map<String, DestinyItemPerksComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyItemPerksComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyItemPerksComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint64AndDestinyItemPerksComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyItemPerksComponent.fromMap(item));
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