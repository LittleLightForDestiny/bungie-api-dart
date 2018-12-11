import 'destiny_item_sockets_component.dart';
class DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent{
	Map<DestinyItemSocketsComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent(
		Map<DestinyItemSocketsComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent.fromJson(item));
    });
    return list;
	}
}