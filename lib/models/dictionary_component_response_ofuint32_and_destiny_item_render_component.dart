import 'destiny_item_render_component.dart';
class DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent{
	Map<DestinyItemRenderComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent(
		Map<DestinyItemRenderComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = data;
			data['privacy'] = privacy;
	}
}