import 'destiny_item_render_component.dart';
class SingleComponentResponseOfDestinyItemRenderComponent{
	DestinyItemRenderComponent data;
	int privacy;
	SingleComponentResponseOfDestinyItemRenderComponent(
		DestinyItemRenderComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyItemRenderComponent fromJson(Map<String, dynamic> data){
		return new SingleComponentResponseOfDestinyItemRenderComponent(
				DestinyItemRenderComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyItemRenderComponent> fromList(List<dynamic> data){
		List<SingleComponentResponseOfDestinyItemRenderComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyItemRenderComponent.fromJson(item));
    });
    return list;
	}
}