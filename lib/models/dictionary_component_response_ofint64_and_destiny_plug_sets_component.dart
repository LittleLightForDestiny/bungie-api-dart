import 'destiny_plug_sets_component.dart';
class DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent{
	Map<DestinyPlugSetsComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent(
		Map<DestinyPlugSetsComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent fromJson(Map<String, dynamic> data){
		return new DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent> fromList(List<dynamic> data){
		List<DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent.fromJson(item));
    });
    return list;
	}
}