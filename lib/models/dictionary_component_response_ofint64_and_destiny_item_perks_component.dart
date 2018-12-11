import 'destiny_item_perks_component.dart';
class DictionaryComponentResponseOfint64AndDestinyItemPerksComponent{
	Map<DestinyItemPerksComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyItemPerksComponent(
		Map<DestinyItemPerksComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyItemPerksComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint64AndDestinyItemPerksComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyItemPerksComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint64AndDestinyItemPerksComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyItemPerksComponent.fromJson(item));
    });
    return list;
	}
}