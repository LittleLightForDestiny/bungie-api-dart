import 'destiny_inventory_component.dart';
class DictionaryComponentResponseOfint64AndDestinyInventoryComponent{
	Map<DestinyInventoryComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyInventoryComponent(
		Map<DestinyInventoryComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyInventoryComponent fromJson(Map<String, dynamic> data){
		return new DictionaryComponentResponseOfint64AndDestinyInventoryComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyInventoryComponent> fromList(List<dynamic> data){
		List<DictionaryComponentResponseOfint64AndDestinyInventoryComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyInventoryComponent.fromJson(item));
    });
    return list;
	}
}