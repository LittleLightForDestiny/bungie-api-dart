import 'destiny_item_render_component.dart';
class DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent{
	Map<DestinyItemRenderComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent(
		Map<DestinyItemRenderComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent fromJson(Map<String, dynamic> data){
		return new DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent> fromList(List<dynamic> data){
		List<DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent.fromJson(item));
    });
    return list;
	}
}