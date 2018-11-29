import 'destiny_item_render_component.dart';
class DictionaryComponentResponseOfint32AndDestinyItemRenderComponent{
	Map<DestinyItemRenderComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint32AndDestinyItemRenderComponent(
		Map<DestinyItemRenderComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint32AndDestinyItemRenderComponent fromJson(Map<String, dynamic> data){
		return new DictionaryComponentResponseOfint32AndDestinyItemRenderComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint32AndDestinyItemRenderComponent> fromList(List<dynamic> data){
		List<DictionaryComponentResponseOfint32AndDestinyItemRenderComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint32AndDestinyItemRenderComponent.fromJson(item));
    });
    return list;
	}
}