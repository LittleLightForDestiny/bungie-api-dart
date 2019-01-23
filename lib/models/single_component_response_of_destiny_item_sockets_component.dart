import 'destiny_item_sockets_component.dart';

/**  */
class SingleComponentResponseOfDestinyItemSocketsComponent{
	
	/** Instanced items can have sockets, which are slots on the item where plugs can be inserted.
Sockets are a bit complex: be sure to examine the documentation on the DestinyInventoryItemDefinition's "socket" block and elsewhere on these objects for more details. */
	DestinyItemSocketsComponent data;
	
	/** A set of flags for reason(s) why the component populated in the way that it did. Inspect the individual flags for the reasons. */
	int privacy;
	SingleComponentResponseOfDestinyItemSocketsComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyItemSocketsComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyItemSocketsComponent(
				data['data'] != null ? DestinyItemSocketsComponent.fromMap(data['data']) : null,
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyItemSocketsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyItemSocketsComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyItemSocketsComponent.fromMap(item));
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