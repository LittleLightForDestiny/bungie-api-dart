import 'destiny_item_instance_component.dart';
class DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent{
	Map<DestinyItemInstanceComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent(
		Map<DestinyItemInstanceComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent fromJson(Map<String, dynamic> data){
		return new DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent> fromList(List<dynamic> data){
		List<DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent.fromJson(item));
    });
    return list;
	}
}