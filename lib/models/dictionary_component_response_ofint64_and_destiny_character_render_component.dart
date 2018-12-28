import 'destiny_character_render_component.dart';

/*  */
class DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent{
	
	/*  */
	Map<String, DestinyCharacterRenderComponent> data;
	
	/*  */
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent(
				data['data'] != null ? Map<String, DestinyCharacterRenderComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyCharacterRenderComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = this.data;
			data['privacy'] = this.privacy;
		return data;
	}
}