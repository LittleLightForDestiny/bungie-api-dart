import 'destiny_item_instance_component.dart';
class DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent{
	Map<DestinyItemInstanceComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent(
		Map<DestinyItemInstanceComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent fromJson(Map<String, dynamic> data){
		return new DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent> fromList(List<dynamic> data){
		List<DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent.fromJson(item));
    });
    return list;
	}
}