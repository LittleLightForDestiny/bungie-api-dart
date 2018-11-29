import 'destiny_collectibles_component.dart';
class DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent{
	Map<DestinyCollectiblesComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent(
		Map<DestinyCollectiblesComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent fromJson(Map<String, dynamic> data){
		return new DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent> fromList(List<dynamic> data){
		List<DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent.fromJson(item));
    });
    return list;
	}
}