import 'destiny_item_render_component.dart';

/*  */
class DictionaryComponentResponseOfint32AndDestinyItemRenderComponent{
	
	/*  */
	Map<String, DestinyItemRenderComponent> data;
	
	/*  */
	int privacy;
	DictionaryComponentResponseOfint32AndDestinyItemRenderComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfint32AndDestinyItemRenderComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint32AndDestinyItemRenderComponent(
				data['data'] != null ? Map<String, DestinyItemRenderComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyItemRenderComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint32AndDestinyItemRenderComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint32AndDestinyItemRenderComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint32AndDestinyItemRenderComponent.fromMap(item));
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