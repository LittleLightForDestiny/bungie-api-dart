import 'destiny_item_sockets_component.dart';
class DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent{
	Map<DestinyItemSocketsComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent(
		Map<DestinyItemSocketsComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent.fromJson(item));
    });
    return list;
	}
}