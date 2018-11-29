import 'destiny_item_sockets_component.dart';
class DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent{
	Map<DestinyItemSocketsComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent(
		Map<DestinyItemSocketsComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent fromJson(Map<String, dynamic> data){
		return new DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent> fromList(List<dynamic> data){
		List<DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent.fromJson(item));
    });
    return list;
	}
}