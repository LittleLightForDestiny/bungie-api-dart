import 'destiny_item_talent_grid_component.dart';
class DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent{
	Map<DestinyItemTalentGridComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent(
		Map<DestinyItemTalentGridComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent fromJson(Map<String, dynamic> data){
		return new DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent> fromList(List<dynamic> data){
		List<DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent.fromJson(item));
    });
    return list;
	}
}