import 'destiny_item_perks_component.dart';
class DictionaryComponentResponseOfint32AndDestinyItemPerksComponent{
	Map<DestinyItemPerksComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint32AndDestinyItemPerksComponent(
		Map<DestinyItemPerksComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint32AndDestinyItemPerksComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint32AndDestinyItemPerksComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint32AndDestinyItemPerksComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint32AndDestinyItemPerksComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint32AndDestinyItemPerksComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = data;
			data['privacy'] = privacy;
	}
}