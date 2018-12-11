import 'destiny_item_perks_component.dart';
class DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent{
	Map<DestinyItemPerksComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent(
		Map<DestinyItemPerksComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent.fromJson(item));
    });
    return list;
	}
}