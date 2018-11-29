import 'destiny_item_instance_component.dart';
class DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent{
	Map<DestinyItemInstanceComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent(
		Map<DestinyItemInstanceComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent fromJson(Map<String, dynamic> data){
		return new DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent> fromList(List<dynamic> data){
		List<DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent.fromJson(item));
    });
    return list;
	}
}