import 'destiny_item_socket_state.dart';
class DestinyItemSocketsComponent{
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