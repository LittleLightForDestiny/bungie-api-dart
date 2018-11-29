import 'destiny_item_perks_component.dart';
class DictionaryComponentResponseOfint32AndDestinyItemPerksComponent{
	Map<DestinyItemPerksComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint32AndDestinyItemPerksComponent(
		Map<DestinyItemPerksComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint32AndDestinyItemPerksComponent fromJson(Map<String, dynamic> data){
		return new DictionaryComponentResponseOfint32AndDestinyItemPerksComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint32AndDestinyItemPerksComponent> fromList(List<dynamic> data){
		List<DictionaryComponentResponseOfint32AndDestinyItemPerksComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint32AndDestinyItemPerksComponent.fromJson(item));
    });
    return list;
	}
}