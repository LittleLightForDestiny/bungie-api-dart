import 'destiny_character_component.dart';
class DictionaryComponentResponseOfint64AndDestinyCharacterComponent{
	Map<DestinyCharacterComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyCharacterComponent(
		Map<DestinyCharacterComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyCharacterComponent fromJson(Map<String, dynamic> data){
		return new DictionaryComponentResponseOfint64AndDestinyCharacterComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyCharacterComponent> fromList(List<dynamic> data){
		List<DictionaryComponentResponseOfint64AndDestinyCharacterComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyCharacterComponent.fromJson(item));
    });
    return list;
	}
}