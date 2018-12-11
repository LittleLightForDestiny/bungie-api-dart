import 'destiny_character_render_component.dart';
class DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent{
	Map<DestinyCharacterRenderComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent(
		Map<DestinyCharacterRenderComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent.fromJson(item));
    });
    return list;
	}
}