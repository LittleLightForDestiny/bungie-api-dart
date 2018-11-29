import 'destiny_kiosks_component.dart';
class DictionaryComponentResponseOfint64AndDestinyKiosksComponent{
	Map<DestinyKiosksComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyKiosksComponent(
		Map<DestinyKiosksComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyKiosksComponent fromJson(Map<String, dynamic> data){
		return new DictionaryComponentResponseOfint64AndDestinyKiosksComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyKiosksComponent> fromList(List<dynamic> data){
		List<DictionaryComponentResponseOfint64AndDestinyKiosksComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyKiosksComponent.fromJson(item));
    });
    return list;
	}
}