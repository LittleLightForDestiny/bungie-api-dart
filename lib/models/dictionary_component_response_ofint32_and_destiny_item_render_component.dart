import 'destiny_item_render_component.dart';
class DictionaryComponentResponseOfint32AndDestinyItemRenderComponent{
	Map<DestinyItemRenderComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint32AndDestinyItemRenderComponent(
		Map<DestinyItemRenderComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint32AndDestinyItemRenderComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint32AndDestinyItemRenderComponent(
				data['data'],
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
			data['data'] = data;
			data['privacy'] = privacy;
	}
}