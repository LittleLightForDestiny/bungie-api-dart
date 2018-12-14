import 'destiny_item_render_component.dart';
class SingleComponentResponseOfDestinyItemRenderComponent{
	DestinyItemRenderComponent data;
	int privacy;
	SingleComponentResponseOfDestinyItemRenderComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyItemRenderComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyItemRenderComponent(
				data['data'] != null ? DestinyItemRenderComponent.fromMap(data['data']) : null,
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyItemRenderComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyItemRenderComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyItemRenderComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = this.data.toMap();
			data['privacy'] = this.privacy;
		return data;
	}
}