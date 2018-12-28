import 'destiny_item_socket_state.dart';

/* Instanced items can have sockets, which are slots on the item where plugs can be inserted.
Sockets are a bit complex: be sure to examine the documentation on the DestinyInventoryItemDefinition's "socket" block and elsewhere on these objects for more details. */
class DestinyItemSocketsComponent{
	
	/* The list of all sockets on the item, and their status information. */
	List<DestinyItemSocketState> sockets;
	DestinyItemSocketsComponent(
		this.sockets,
	);

	static DestinyItemSocketsComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemSocketsComponent(
				data['sockets'] != null ? DestinyItemSocketState.fromList(data['sockets']) : null,
		);
	}

	static List<DestinyItemSocketsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemSocketsComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSocketsComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['sockets'] = this.sockets.map((item)=>item.toMap()).toList();
		return data;
	}
}