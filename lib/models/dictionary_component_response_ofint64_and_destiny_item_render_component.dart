import 'destiny_item_render_component.dart';
class DictionaryComponentResponseOfint64AndDestinyItemRenderComponent{
	Map<DestinyItemRenderComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyItemRenderComponent(
		Map<DestinyItemRenderComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint64AndDestinyItemRenderComponent fromJson(Map<String, dynamic> data){
		return new DictionaryComponentResponseOfint64AndDestinyItemRenderComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint64AndDestinyItemRenderComponent> fromList(List<dynamic> data){
		List<DictionaryComponentResponseOfint64AndDestinyItemRenderComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint64AndDestinyItemRenderComponent.fromJson(item));
    });
    return list;
	}
}