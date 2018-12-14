import 'destiny_item_render_component.dart';
class DictionaryComponentResponseOfint64AndDestinyItemRenderComponent{
	Map<String, DestinyItemRenderComponent> data;
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyItemRenderComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyItemRenderComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint64AndDestinyItemRenderComponent(
				data['data'] != null ? Map<String, DestinyItemRenderComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyItemRenderComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyItemRenderComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint64AndDestinyItemRenderComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyItemRenderComponent.fromMap(item));
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