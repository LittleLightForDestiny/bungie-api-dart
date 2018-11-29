import 'destiny_item_plug_component.dart';
class DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent{
	Map<DestinyItemPlugComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent(
		Map<DestinyItemPlugComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent fromJson(Map<String, dynamic> data){
		return new DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent> fromList(List<dynamic> data){
		List<DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent.fromJson(item));
    });
    return list;
	}
}