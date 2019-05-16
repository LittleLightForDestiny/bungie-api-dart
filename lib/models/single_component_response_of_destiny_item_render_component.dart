import 'destiny_item_render_component.dart';

/**  */
class SingleComponentResponseOfDestinyItemRenderComponent{
	
	/** Many items can be rendered in 3D. When you request this block, you will obtain the custom data needed to render this specific instance of the item. */
	DestinyItemRenderComponent data;
	
	/**  */
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
			data['data'] = this.data != null? this.data.toMap() : null;
			data['privacy'] = this.privacy;
		return data;
	}
}